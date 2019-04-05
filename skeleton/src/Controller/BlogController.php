<?php


namespace App\Controller;


use App\Entity\Article;
use App\Entity\Comments;
use App\Repository\ArticleRepository;
use Doctrine\Common\Persistence\ObjectManager;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\Form\Extension\Core\Type\TextareaType;
use Symfony\Component\Form\Extension\Core\Type\TextType;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\Routing\Annotation\Route;

class BlogController extends AbstractController
{

    /**
     * @Route("/", name="home")
     */

    public function home(ArticleRepository $repo)
    {

        //$repo = $this->getDoctrine()->getRepository(Article::class);
        $article = $repo->findAll();

        return $this->render('blog/home.html.twig', [
            'title' => 'Bienvenue dans ce Blog', 'articles' => $article
        ]);
    }



    /**
     * @Route("/blog/new", name="create")
     * @Route("/blog/{id}/edit", name="edit")
     */
    public function form(Article $article = null, Request $request,ObjectManager $manager) {

        if(!$article) {
            $article = new Article();
            $user = $this->getUser();
            $user->getId();
        }

        $form = $this->createFormBuilder($article)
            ->add('title', TextType::class, [
                'attr'=> [
                    'placeholder' => "Titre de l'article",
                    'class' => "inp_title"
                ]
            ])
            ->add('content',TextareaType::class, [
                'attr' => [
                    'placeholder' => "contenu de l'article",
                    'class' => "inp_article"
                ]
            ])
            ->getForm();

        $form-> handleRequest($request);

        if($form->isSubmitted() && $form->isValid()) {


                $article->setDate(new \DateTime());
                $article->setUser($user);


            $manager->persist($article);
            $manager->flush();

            return $this->redirectToRoute('show',[
                'id'=> $article->getId()
            ]);
        }

        return $this->render('blog/createArticle.html.twig',[
            'formArticle'=> $form->createView(),
            'editMode' => $article->getId() !== null
        ]);
    }


    /**
     * @Route("/blog/show/{id}", name="show")
     */
    public function show(ArticleRepository $repo,$id,Request $request, ObjectManager $manager) {

        //$repo = $this->getDoctrine()->getRepository(Article::class);

        $article = $repo->find($id);

        $user = $this->getUser();
        $user->getId();

        $comment = new Comments();

        $form = $this->createFormBuilder($comment)
            ->add('author', TextType::class, [
                'attr' => [
                    'placeholder' => "auteur",
                    'class' => "inp_author"
                ]
            ])
            ->add('content', TextareaType::class, [
                'attr' => [
                    'placeholder' => "contenu du commentaire",
                    'class' => "inp_commentaire"
                ]
            ])
            ->getForm();

        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {


            $comment->setDate(new \DateTime());
            $comment-> setArticle($article);
            $comment->setUser($user);


            $manager->persist($comment);
            $manager->flush();

            return $this->redirectToRoute('show', [
                'id' => $comment->getId()
            ]);
        }

        return $this->render('blog/show.html.twig',[
            'article'=> $article, 'id'=> $id,'formComment' => $form->createView(),
            'editMode' => $comment->getId() !== null
        ]);


        }


}
