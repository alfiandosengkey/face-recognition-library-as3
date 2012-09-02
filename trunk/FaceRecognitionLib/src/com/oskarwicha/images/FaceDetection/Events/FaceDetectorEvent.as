package com.oskarwicha.images.FaceDetection.Events
{
	import flash.display.Bitmap;
	import flash.events.Event;
	import flash.geom.Rectangle;

	/**
	 * Klasa zdarzeń wysyłanych przez obiekty klasy
	 * <code>FaceDetector</code> gdy obiekt tej klasy zakończy
	 * proces detekcji twarzy.
	 * 
	 * @author Oskar Wicha
	 * 
	 * @flowerModelElementId _V6tXwPQwEeG4_d92CzHtyg
	 */
	public class FaceDetectorEvent extends Event
	{
		/**
		 * Przekazuje bitmapę zawierającą fragment zdjęcia 
		 * zawierający wykrytą twarz
		 * */
		public var faceImg:Bitmap;
		
		/**
		 *	Przekazuje pozycję i wymiary znalezionej twarzy
		 */
		public var facePos:Rectangle;
		/**
		 * Publiczna stała statyczna przechowyjąca
		 * tekst używany do identyfikacji typu
		 * zdarzenia (event'u).
		 *
		 */
		public static const FACE_CROPPED:String = "FaceDetectorEvent_FACE_CROPPED";
		/**
		 * Publiczna stała statyczna przechowyjąca
		 * tekst używany do identyfikacji typu
		 * zdarzenia (event'u).
		 *
		 */
		public static const NO_FACES_DETECTED:String = "FaceDetectorEvent_NO_FACES_DETECTED";
		
		/**
		 * Publiczna stała statyczna przechowyjąca
		 * tekst używany do identyfikacji typu
		 * zdarzenia (event'u).
		 *
		 */
		public static const FACE_DETECTION_START:String = "FaceDetectorEvent_FACE_DETECTION_START";

		/**
		 * Konstruktor klasy.
		 * Używany do stworzenia obiektu zdażenia (event'u)
		 * zazwyczaj przed jego wysłaniem.
		 *
		 * @param type Typ zdarzenia, które ma zostać utworzone i
		 * jest zdefiniowane w tej klasie
		 * @param bubbles Zmienna kontrolująca sposób propagacji
		 * zdarzenia
		 * @param cancelable Decyduje czy jeden z obiektów
		 * odbierających zdarzenie może je powstrzymać przed
		 * dalszą propagacją
		 *
		 */
		public function FaceDetectorEvent(type:String, faceImg:Bitmap = null, facePos:Rectangle = null, bubbles:Boolean = false, cancelable:Boolean = false)
		{
			super(type, bubbles, cancelable);
			this.faceImg = faceImg;
			this.facePos = facePos;
		}

		/**
		 * Funkcja nadpisująca już istniejącą funkcje o takiej
		 * samej nazwie w klasie <code>flash.events.Event</code>.
		 * Umożliwia zrobienie kopii obiektu zdarzenia.
		 *
		 * @return Kopia obiektu
		 *
		 */
		override public function clone():Event
		{
			var ev:FaceDetectorEvent = new FaceDetectorEvent(type, faceImg, facePos, bubbles, cancelable);
			return ev;
		}
	}
}
