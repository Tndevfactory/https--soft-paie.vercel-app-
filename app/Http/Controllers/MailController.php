<?php

namespace App\Http\Controllers;
use PDF;
use Exception;
use App\Models\User;
use Illuminate\Http\File;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Mail;
use Illuminate\Support\Facades\Storage;

class MailController extends Controller
{
     /**
     * one fiche de paie
     *
     * @return response()
     */
    public function fichePaie()
    {
        $data["email"] = "devops12345678910@gmail.com";
        $data["title"] = "fiche-de-paie-mars-2021";
        $data["body"] = "Bonjour, ci-joint la fiche de paie du mois de mars 2021.";
  
        $pdf = PDF::loadView('fiche_paie_pdf', $data);
  
        Mail::send('emails.corps_pdf_mail', $data, function($message) use($data, $pdf) {
            $message->to( $data["email"] ,  'soft-paie' )
                    ->subject($data["title"])
                    ->attachData($pdf->output(), "fiche-de-paie.pdf");
        });
  
    }

     /**
     * mass fiche de paie to all employee
     *
     * @return response()
     */
    public function massFichePaie()
    {

       $emails=User::pluck('email');

        $data["email"] = "devops12345678910@gmail.com";
        $data["title"] = "fiche-de-paie-mars-2021";
        $data["body"] = "Bonjour, ci-joint la fiche de paie du mois de mars 2021.";
  
        $pdf = PDF::loadView('fiche_paie_pdf', $data);
  
        foreach($emails as $email){

            Mail::send('emails.corps_pdf_mail', $data, function($message) use($data, $pdf, $email) {
                $message->to( $email ,  'soft-paie' )
                        ->subject($data["title"])
                        ->attachData($pdf->output(), "fiche-de-paie.pdf");
            });
        }
       
    }

    /**
     * general mail
     *
     * @return response()
     */
    public function simpleMail(Request $request)
    {
   
        $title= $request->title;
        $body= $request->body;
        $file= $request->file;

        $sender["email"] = "tndev8@gmail.com";
        $sender["title"] = $title ?? 'no title';
        $sender["body"] = $body ?? 'no body';
         
  
        Mail::send('emails.simple_mail', $sender, function($message) use($sender, $file) {
            $message->to( $sender["email"] ,  'soft-paie' )
                    ->subject($sender["title"])
                    ->attach($file->getRealPath(), 
                     [
                        'as' => $file->getClientOriginalName(),
                       'mime' => $file->getMimeType(),
                  ]);
        });

        
        $data = [
            ["success" => "mail sent", ], 
            ["info" => "pretty sure that is sent ch", ]
        ];
       
        return $data;
    }


    public function SenderFichePaieFromPublic($yearm, $monthm)
    {
        

     

        $msg["title"] = 'fiche-de-paie'.'-'.$monthm.'-'.$yearm ;
        $msg["body"] = 'Bonjour, ci-joint la fiche de paie de mois de'. $monthm. ' '. $yearm ;
       
        $path1='uploads/users/employe/';
        $fiche_paie=$yearm.$monthm.'.pdf';
       
        $emails=User::pluck('email');
        //$noms_id=collect(User::pluck('id','email'))->map(function ($v,$k) {return 'uploads/users/employe/'.$k.'-'.$v.'/'.'202101.pdf';})
       // "bassem@soft-paie.tn" => "uploads/users/employe/bassem@soft-paie.tn-2/202101.pdf",
        // $noms_id=collect(User::pluck('id','nom'))->map(function ($v,$k) {return 'uploads/users/employe/'.$k.'-'.$v.'/'.'202101.pdf';})

        //$noms_id=collect(User::pluck('id','nom'))->map(function ($v,$k) {return $path1.$k.'-'.$v.'/'.$fiche_paie;})
        // "belkahla" => "uploads/users/employe/belkahla-1/202101.pdf",
        // "belkadi" => "uploads/users/employe/belkadi-2/202101.pdf",
        $locations = [];
        foreach($noms_id as $k=>$v){$locations[]=public_path($v);}
      // "C:\Users\barho\Desktop\dev\https-soft-paie.vercel-app-\server\public\uploads/users/employe/fadlaoui-5/202101.pdf",

      foreach($locations  as $location){echo $location;}
      //C:\Users\barho\Desktop\dev\https-soft-paie.vercel-app-\server\public\uploads/users/employe/belkahla-1/202101.pdf
      //C:\Users\barho\Desktop\dev\https-soft-paie.vercel-app-\server\public\uploads/users/employe/belkadi-2/202101.pdf
     


        $failures = [];
        $success=[];

   foreach($emails as $email){
         try {

            Mail::send('emails.corps_pdf_mail', $msg, function($message) use($msg, $location , $email) {
                    $message->to($email,'soft-paie')->subject($msg["title"])->attach($location ,  [
                            'as' => 'mars2021.pdf',
                        'mime' => 'application/pdf',
                    ]);
                });

            $success[]=$email;

            } catch (\Exception $e) {

                if (count(Mail::failures()) > 0) {
                    $failures[] = Mail::failures()[0];
                }
                
            }
        }
            
       
        $data=[
            'failed recepients' => $emails,
            'sent recepients' => $success,
          ];
        return $data;
    }

    public function createSendMassFichePaieFromPublic($yearm, $monthm)
    {
        
         $failures = [];
         $success=[];
       
       
        switch ($monthm) {
            case 1 :
                $dt = collect(['Janvier', $yearm]);
            break;

            case 2 :
                $dt = collect(['Fevrier', $yearm]);
            break;

            case 3 :
                $dt = collect(['Mars', $yearm]);
            break;
            
            case 4 :
                $dt = collect(['Avril', $yearm]);
            break;

            case 5 :
                $dt = collect(['Mai', $yearm]);
            break;

            case 6 :
                $dt = collect(['Juin', $yearm]);
            break;

            case 7 :
                $dt = collect(['Juillet', $yearm]);
            break;

            case 8:
                $dt = collect(['Aout', $yearm]);
            break;

            case 9 :
                $dt = collect(['Septembre', $yearm]);
            break;

            case 10 :
                $dt = collect(['Octobre', $yearm]);
            break;

            case 11:
                $dt = collect(['Novembre', $yearm]);
            break;

            case 12:
                $dt = collect(['Decembre', $yearm]);
            break;

          
        }

       // corps du mail
       $data["email"] = "soft-paie@tndev3.tn-devfactory.com";
        $data["title"] = "fiche-de-paie ".$yearm.'-'.$monthm;
        $data["body"] = "Bonjour, ci-joint la fiche de paie du  " .$yearm.'-'.$monthm;

  
        $border=User::count();

      //  $dt = collect([$monthm, $yearm]);
       
       for ($x = 1; $x <= $border + 1 ; $x++) {
        try {
            $user = User::find($x);

            //attachment creation
            $pdf = PDF::loadView('fiche_paie_pdf', compact('user', 'dt'));

            $email = $user->email;

            Mail::send('emails.corps_pdf_mail', $data, function($message) use($data, $pdf, $email) {
                $message->to( $email ,  'soft-paie' )
                        ->subject($data["title"])
                        ->attachData($pdf->output(), "fiche-de-paie.pdf");
            });
          
            //  echo 'good recepient   '  . $email . '<br>';

          
             $success[$x]=$email;

        } catch (\Exception $e) {
            //echo 'bad recepient   '  . $email . '<br>';
            $failures[$x]=$email;


        }
      
    }

     $infos=[
           
            'failed' => collect($failures),
            'sent' => collect($success)
            
          ];
        return  $infos;
             
        // return 'done';

        // $failures = [];
        // $success=[];

//    foreach($emails as $email){
//          try {

//             $success[]=$email;

//             } catch (\Exception $e) {

//                 if (count(Mail::failures()) > 0) {
//                     $failures[] = Mail::failures()[0];
//                 }
                
//             }
//         }
            
       
        // $data=[
        //     'failed recepients' => $emails,
        //     'sent recepients' => $success,
        //   ];
        // return $data;

        
    }
}
