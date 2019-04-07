<?php

namespace App\Controller;


use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\Routing\Annotation\Route;
use App\Repository\ArticleRepository;
use App\Entity\Article;
use App\Entity\Comments;
use Doctrine\Common\Persistence\ObjectManager;
use Symfony\Component\Form\Extension\Core\Type\TextareaType;
use Symfony\Component\Form\Extension\Core\Type\TextType;
use Symfony\Component\HttpFoundation\Request;


/**
 * @Route("/admin")
 */

class Admin_Controller extends AbstractController
{

    /**
     * @Route("/")
     */

    public function AdminHome(ArticleRepository $repo)
    {

        $article = $repo->findAll();

        return $this->render('admin/home.html.twig', [
            'title' => 'Bienvenue dans ce Blog', 'articles' => $article
        ]);
    }
}