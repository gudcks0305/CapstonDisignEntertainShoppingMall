����   6 i  DAO/ProductRepository  java/lang/Object listOfProducts Ljava/util/ArrayList; 	Signature $Ljava/util/ArrayList<LDTO/Product;>; <init> ()V Code
   	 
  java/util/ArrayList
  	      DTO/Product  P1234  	iPhone 6s 5 
    java/lang/Integer   valueOf (I)Ljava/lang/Integer;
  ! 	 " :(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V $ @4.17-inch, 1334X750 Renina HD display, 8-megapixel iSight Camera
  & ' ( setDescription (Ljava/lang/String;)V * Smart Phone
  , - ( setCategory / Apple
  1 2 ( setManufacturer      �
  6 7 8 setUnitsInSock (J)V : New
  < = ( setCondition ? P1235 A LG PC 그램 �` D @13.3-inch, IPS LED display, 5rd Generation Intel Core processors F NoteBook H LG J Refurbished L P1236 N Galaxy Tab S �� Q <212.8*125.6*6.6mm, Super AMOLED display, Octa-Core Processor S Tablet U Samsung W Old
  Y Z [ add (Ljava/lang/Object;)Z LineNumberTable LocalVariableTable this LDAO/ProductRepository; phone LDTO/Product; notebook tablet getAllProducts ()Ljava/util/ArrayList; &()Ljava/util/ArrayList<LDTO/Product;>; 
SourceFile ProductRepository.java !                 	 
    _     �*� *� Y� � � Y� �  L+#� %+)� ++.� 0+ 3� 5+9� ;� Y>@B� �  M,C� %,E� +,G� 0, 3� 5,I� ;� YKMO� �  N-P� %-R� +-T� 0- 3� 5-V� ;*� +� XW*� ,� XW*� -� XW�    \   b    	    
    &  ,  2  9  ?  P  V  \  b  i  o  �  �  �  �  �  �  �   � ! � # ]   *    � ^ _     � ` a  P k b a  � ; c a   d e      f    /     *� �    \       & ]        ^ _    g    h