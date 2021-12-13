import 'package:cafe_app/cafe/models/cafe_info.dart';
import 'package:cafe_app/core/service/data_service.dart';

class CafeInfoViewmodel {
  Future<List<CafeInfoModel>> getCafeInfo() {
    return DatabaseService.getCafeInfo();
    // return [
    //   CafeInfoModel(
    //       cafeName: "Common Room x Ari",
    //       cafeDescription:
    //           "ร้าน Common Room x Ari คาเฟ่สไตล์มินิมอลสีขาวบริสุทธิ์ที่ไม่ว่าจะมุมไหนของทางร้านก็เหมาะแก่การนั่งฟังเพลงคลาสสิก จิบกาแฟอุ่นๆ พร้อมกับทำงานด้วยไปในตัว เมนูของทางร้านจะเน้นไปทางกาแฟ ซึ่งกาแฟของทางร้านก็มีหลายแบบให้เลือกดื่มเช่นกัน ไม่ว่าจะเป็น Cold brew หรือกาแฟสดอย่าง Latte, Mocha, Affogato ที่ใช้ไอศกรีมวานิลลาโฮมเมด ราคาเริ่มต้นที่ 65 บาท และนอกจากนี้เมนูอาหารคาวก็น่าสนใจอีกด้วยน๊าา ",
    //       cafeAddress:
    //           "5 ซอยพหลโยธิน 7 แขวงสามเสนใน เขตพญาไท กรุงเทพมหานคร 10400",
    //       cafeTimeDescription:
    //           "เปิดบริการวันจันทร์-วันเสาร์ 08.00-17.00 น. หยุดวันอาทิตย์",
    //       cafePhoneNumber: "062-416-7746",
    //       cafePathImage: "assets/images/common_room.jpg",
    //       cafeCategory: "คาเฟ่มินิมอล"),
    //   CafeInfoModel(
    //       cafeName: "Chuanpisamai Café",
    //       cafeDescription:
    //           "ร้านกาแฟและคาเฟ่แบบแปลกแหวกแนวอยู่ต้องลองมาที่ Chuanpisamai Cafe (ชวนพิสมัย คาเฟ่) ร้านกาแฟสไตล์วินเทจแบบหวานๆ ที่ไม่ใช่แค่แหล่งนั่งทำงาน อ่านหนังสือเท่านั้น แต่ยังเป็นส่วนหนึ่งของสตูดิโอเช่าชุดแต่งงานและจำหน่ายเสื้อผ้าแฟชั่นสไตล์วินเทจอีกด้วย โซนร้านกาแฟและคาเฟ่เองก็ไม่น้อยหน้า สีสันเครื่องดื่มและของหวานมันช่างบาดตาสมกับสไตล์วินเทจเสียจริงๆ โดยเมนูแนะนำของทางร้านจะเป็น Chuanpisamai (168 บาท) ไอศกรีมวนิลลาสีสดใส ราดด้วยซอสราสป์เบอร์รี่และเจลลี่ลิ้นจี่ ทานเข้าไปแล้วได้กลิ่นของกุหลาบอ่อนๆ ชวนผ่อนคลาย และ Strawberry Milk (128 บาท) นมเย็นสีชมพูฟ้า ราดท็อปปิงด้วยมาชเมลโล่และวิปครีมหนานุ่ม",
    //       cafeAddress:
    //           "ซอยอารีย์สัมพันธ์ 7 จาก BTS อารีย์ ให้เลือกลงทางออก 3 เดินเข้าไปกลางๆ ซอย หรือเรียกใช้บริการวินมอเตอร์ไซค์ก็สะดวกเช่นกัน",
    //       cafeTimeDescription: "เปิดทุกวันอังคาร - อาทิตย์ เวลา 11.00-21.00 น.",
    //       cafePhoneNumber: "083-076-2264",
    //       cafePathImage: "assets/images/chuanpisamai.jpg",
    //       cafeCategory: "คาเฟ่มินิมอล"),
    //   CafeInfoModel(
    //       cafeName: "Porcupine Café",
    //       cafeDescription:
    //           "สำหรับสาวกวินเทจร้านนี้ตอบโจทย์ได้ดีเลยทีเดียว ตัวร้านตกเเต่งด้วยโทนสีขาวเเละไม้ ทำให้บรรยากาศภายร้านดูสงบ อบอุ่น ด้านเมนูของหวานก็น่าทานมาก ไม่ว่าจะเป็น Chocolate tone, Latte cactus และเมนูสุดคุ้มอย่าง White Iced Cube Latte ที่มาเป็นเซตใหญ่ แหม...เห็นอย่างนี้ต้องไปลองหน่อยแล้ว ราคาเริ่มต้น 50 บาท ค่า ได้มาจิบกาแฟ พักผ่อนเบาๆ คงดีไม่น้อยเลยค่ะ",
    //       cafeAddress: "48 ซอยพหลโยธิน 7 ซอยอารีย์ 4 เหนือ กรุงเทพมหานคร 10400",
    //       cafeTimeDescription: "เปิดบริการทุกวัน 11.00-22.00 น.",
    //       cafePhoneNumber: "091-469-4646",
    //       cafePathImage: "assets/images/porcupine.jpeg",
    //       cafeCategory: "คาเฟ่มินิมอล"),
    //   CafeInfoModel(
    //       cafeName: "Hor Hidden Cafe",
    //       cafeDescription:
    //           "ร้านขนมหวานย่านอารีย์ ร้านนี้จะเป็นร้านเล็กๆ ตกเเต่งคาเฟ่แบบยุโรปดูลึกลับนิดๆ เเต่น่านั่งสุดๆ เมนูของร้านก็มีให้เลือกทานได้เยอะมากค่ะ จุดเด่นของร้านนี้คือการใส่ใจวัตถุดิบเเละลูกค้าแบบสุด ๆ ชนิดที่ว่าถ้าคนที่ไปทานบ่อยๆ เนี่ย ร้านจะจดจำได้เลยว่าคุณชอบทานอะไร ชอบทานแบบไหน เรียกได้ว่าใส่ใจสุดๆ ไปเลยใช่ไหมคะ ?  เมนูเเนะนำที่อยากให้ชาวโทสต์ได้ลิ้มลองคือ เมนูโทสต์หวานๆ กรอบนอกนุ่มใน อร่อยสุดๆ เลยค่ะ ราคาเริ่มต้น 100 บาทขึ้นไป",
    //       cafeAddress:
    //           "40/2 ซอย อารีย์1 ถนนพหลโยธิน สามเสนใน พญาไท กรุงเทพมหานคร 10400",
    //       cafeTimeDescription:
    //           "เปิดบริการวันจันทร์, วันพุธ-วันอาทิตย์ 10.00-21.00 น. ปิดวันอังคาร",
    //       cafePhoneNumber: "088-974-0419",
    //       cafePathImage: "assets/images/horhid.jpg",
    //       cafeCategory: "คาเฟ่มินิมอล"),
    //   CafeInfoModel(
    //       cafeName: "เวฬาฌา",
    //       cafeDescription:
    //           "คาเฟ่ร้านสวย บรรยากาศน่ารัก เข้าไปเเล้วให้อารมณ์เหมือนเป็นคุณหนูนั่งจิบชาอะไรเเบบนี้เลยจ้าา ... จุดเด่นของร้านนี้เหมาะมากสำหรับคนที่ชอบจิบชาเพราะร้านนี้มีชาให้เลือกมากกว่า 40 ชนิดไม่ว่าจะเป็นชาจีน ชาดอกไม้ ชาสมุนไพร ชาญี่ปุ่น ฯลฯ ที่บอกเลยว่าเเต่ละอย่างคัดเลือกมาอย่างดี บางชนิดมีระยะเวลาหมักใบชากว่า 10 ปี!!! ราคาเริ่มต้นที่ 79 -150 บาทค่ะ สำหรับขนมหวานของร้านก็เน้นเป็นขนมไทยหลากหลายชนิดค่ะ บางอย่างก็หาทานยากมากๆ เช่น ขนมดาราทอง ขนมเสน่ห์จันทร์ และขนมสัมปันนี สามารถสั่งเเยกตามใจเลย หรือจะสั่งเป็นเซตก็ได้น้า ราคาเริ่มต้นที่ 290 บาท",
    //       cafeAddress: "ซอยอารีย์ 1 แขวงสามเสนใน เขตพญาไท กรุงเทพมหานคร 10400",
    //       cafeTimeDescription: "เปิดบริการวันอังคาร-วันอาทิตย์ 10.30-21.00 น. ปิดวันจันทร์",
    //       cafePhoneNumber: "063-087-8888",
    //       cafePathImage: "assets/images/vlacha.jpeg",
    //       cafeCategory: "คาเฟ่วินเทจ"),
    //   CafeInfoModel(
    //       cafeName: "Flower in hand by P.",
    //       cafeDescription:
    //           "หลายคนที่อยู่ ใกล้ BTS อารีย์ คงจะคุ้นหูคุ้นตากับ Flower in hand by P. ร้านดอกไม้เล็กๆ ในซอยอารีย์ 1 แต่ล่าสุดทางร้านได้จับจองพื้นที่ในซอยอารีย์ 2 เพื่อเปิดเป็น ร้านกาแฟและคาเฟ่เล็กๆ ที่ไม่ได้มีดีแค่อาหารแต่ยังเป็นแหล่งกิจกรรมของสาวๆ สมัยใหม่ที่หลงรักความสวยงามของดอกไม้นานาพันธุ์อีกด้วย คาเฟ่นี้ เป็นแบบไซส์มินิดูน่ารัก เหมาะสำหรับกินคู่กับ ชา กาแฟ รสกลมกล่อม โดยเมนูที่ทางร้านแนะนำจะเป็น Cookies เมนูธรรมดาที่ไม่ธรรมดา เพราะโรยหน้าด้วยดอกไม้ทานได้ตามฤดูกาล ในราคา 30 บาท",
    //       cafeAddress: "อยู่ที่ซอยอารีย์ 2 ถนนพหลโยธิน จาก BTS อารีย์ เดินเข้าซอยอารีย์ 2 สามเสนใน เขตพญาไท กรุงเทพมหานคร 10400",
    //       cafeTimeDescription: "ทุกวัน ยกเว้นวันพุธ 10.00 - 22.00 น.",
    //       cafePhoneNumber: "098-595-6698",
    //       cafePathImage: "assets/images/flowerinhand.jpg",
    //       cafeCategory: "คาเฟ่ดอกไม้"),
    //   CafeInfoModel(
    //       cafeName: "Thongyoy Cafe",
    //       cafeDescription:
    //           "Thongyoy Cafe หรือภาษาไทยคือ ทองย้อย คาเฟ่นั่นเอง ตัวร้านเป็นคาเฟ่สไตล์ไทย ที่มีสารพัดเมนูให้เลือกสรร ไม่ว่าจะเป็นเมนูเค้ก ชา กาแฟ เเละขนมไทย! ที่บอกเลยว่าน่าทานมากกก เเละน้อยมากที่จะเห็นขนมไทยอยู่ในคาเฟ่ เช่น ตะโก้, ลูกชุบ, ขนมชั้น เเละอีกสารพัดเมนูขนมไทย นอกจากนั้นยังมีเมนูเค้กที่เรียกได้ว่าน่าสนใจมาก เช่น เค้กบัวลอยไข่หวาน ราคา 150 บาท ที่เเค่ได้ยินชื่อก็อยากชิมเเล้วว อย่างนี้ต้องไปลองกันดูนะคะ",
    //       cafeAddress: "88/2 อารีย์สัมพันธ์ ซอย 7 พระรามที่ 6 แขวง สามเสนใน เขต พญาไท กรุงเทพมหานคร 10400",
    //       cafeTimeDescription: "วันจันทร์-วันศุกร์ 08.00 - 22.00 น. วันเสาร์-วันอาทิตย์ 10.00-22.00 น.",
    //       cafePhoneNumber: "083-298-7288",
    //       cafePathImage: "assets/images/thongyoy.jpeg",
    //       cafeCategory: "คาเฟ่ดอกไม้"),
    //   CafeInfoModel(
    //       cafeName: "Bar Storia del Caffe",
    //       cafeDescription:
    //           " ร้าน Bar Storia del Caffe บรรยากาศร้านเงียบสงบบรรยากาศภายในร้านมีการตกแต่งแบบเก๋ๆ เหมาะแก่การนั่งคิดอะไรเพลินๆ เมนูทางร้านมีทั้งอาหารเช้า กลางวัน ของหวานและเครื่องดื่มอร่อยๆ พร้อมเสิร์ฟเลยค่ะ ราคาเมนูเริ่มต้น 100 บาท",
    //       cafeAddress: "ซอยอารี 4 ฝั่งเหนือ กรุงเทพมหานคร 10400",
    //       cafeTimeDescription: "เปิดบริการวันอาทิตย์-วันพฤหัสบดี 09.00-23.00 น. วันศุกร์-วันเสาร์ 09.00-00.00 น.",
    //       cafePhoneNumber: "02-714-9301",
    //       cafePathImage: "assets/images/barstoria.jpg",
    //       cafeCategory: "คาเฟ่นั่งทำงาน"),
    //   CafeInfoModel(
    //       cafeName: "Ease Cafe & CoWorking Space",
    //       cafeDescription:
    //           "Ease Cafe & CoWorking Space จะเน้นอาหารง่ายๆ ให้ความรู้สึกเหมือนมาเที่ยวบ้านเพื่อน แถมยังมีให้เลือกลิ้มชิมรสกันทั้งแบบคาวและแบบหวาน ในราคาย่อมเยากว่าคาเฟ่และร้านกาแฟในย่าน BTS อารีย์ทั่วไป ก็ถือว่าเป็นแหล่งนั่งอ่านหนังสือ ทำงานแห่งใหม่ที่น่าสนใจไม่น้อยเลยทีเดียว",
    //       cafeAddress: "ซอยพหลโยธิน 7 (อารีย์) ถนนพหลโยธิน สามเสนใน พญาไท กรุงเทพมหานคร 10400",
    //       cafeTimeDescription: "ทุกวัน 10.00 - 22.00 น.",
    //       cafePhoneNumber: "092-828-5424",
    //       cafePathImage: "assets/images/ease.jpg",
    //       cafeCategory: "คาเฟ่นั่งทำงาน")
    // ];
  }
}
