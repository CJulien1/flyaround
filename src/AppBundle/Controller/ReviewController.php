<?php

namespace AppBundle\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;

class ReviewController extends Controller
{
    /**
     * @Route("/review")
     */
    public function indexAction()
    {
        return $this->render('review\index.html.twig', array(
        ));
    }

    /**
     * @Route("/new")
     */
    public function newAction()
    {
        return $this->render('review\new.html.twig', array(
        ));
    }

}
