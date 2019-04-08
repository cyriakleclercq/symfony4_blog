<?php

namespace App\Controller;


use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\Routing\Annotation\Route;
use App\Repository\ArticleRepository;


// essai sur controller admin, non utilisé au final

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