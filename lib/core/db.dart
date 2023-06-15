import 'dart:convert';

String jsonStr = '''
 [
          {
            "name": "Bronchitis",
            "questions": [
              {
                "answers": [
                  {
                    "answer": "Less than a week",
                    "score": 1
                  },
                  {
                    "answer": "Few weeks",
                    "score": 3
                  },
                  {
                    "answer": "More than a month",
                    "score": 5
                  }
                ],
                "question": "How long does child\'s cough last?"
              },
              {
                "answers": [
                  {
                    "answer": "Yes",
                    "score": 3
                  },
                  {
                    "answer": "No",
                    "score": 0
                  }
                ],
                "question": "Is temperature rising?"
              },
              {
                "answers": [
                  {
                    "answer": "Mucous",
                    "score": 1
                  },
                  {
                    "answer": "Purulent",
                    "score": 4
                  },
                  {
                    "answer": "Bloody",
                    "score": 5
                  }
                ],
                "question": "What is the nature of child\'s sputum?"
              }
            ],
            "symptomps": [
              {
                "isActive": false,
                "name": "Cough"
              },
              {
                "isActive": false,
                "name": "Temperature"
              },
              {
                "isActive": false,
                "name": "Sputum"
              }
            ]
          },
          {
            "name": "Flu",
            "questions": [
              {
                "answers": [
                  {
                    "answer": "several times a day",
                    "score": 1
                  },
                  {
                    "answer": "Оften",
                    "score": 5
                  },
                  {
                    "answer": "Seizures",
                    "score": 3
                  }
                ],
                "question": "How coughing common?"
              },
              {
                "answers": [
                  {
                    "answer": "37-38°C",
                    "score": 1
                  },
                  {
                    "answer": "38-39°C",
                    "score": 3
                  },
                  {
                    "answer": "39°C+",
                    "score": 5
                  }
                ],
                "question": "What is temperature?"
              },
              {
                "answers": [
                  {
                    "answer": "Yes",
                    "score": 3
                  },
                  {
                    "answer": "No",
                    "score": 0
                  }
                ],
                "question": "Does child difficulty swallowing?"
              }
            ],
            "symptomps": [
              {
                "isActive": false,
                "name": "Cough"
              },
              {
                "isActive": false,
                "name": "Heat"
              },
              {
                "isActive": false,
                "name": "A sore throat"
              }
            ]
          },
          {
            "name": "Angina",
            "questions": [
              {
                "answers": [
                  {
                    "answer": "Less than a week",
                    "score": 1
                  },
                  {
                    "answer": "Few weeks",
                    "score": 3
                  },
                  {
                    "answer": "More than a month",
                    "score": 5
                  }
                ],
                "question": "How long have he had a sore throat?"
              },
              {
                "answers": [
                  {
                    "answer": "Yes",
                    "score": 3
                  },
                  {
                    "answer": "No",
                    "score": 0
                  }
                ],
                "question": "Does child have plaque on the tonsils?"
              },
              {
                "answers": [
                  {
                    "answer": "Noon",
                    "score": 1
                  },
                  {
                    "answer": "At night",
                    "score": 3
                  },
                  {
                    "answer": "Temperature stable",
                    "score": 5
                  }
                ],
                "question": "What time of the day is the temperature the highest?"
              }
            ],
            "symptomps": [
              {
                "isActive": false,
                "name": "A sore throat"
              },
              {
                "isActive": false,
                "name": "Reddening of the tonsils"
              },
              {
                "isActive": false,
                "name": "Heat"
              }
            ]
          },
          {
            "name": "Diabetes",
            "questions": [
              {
                "answers": [
                  {
                    "answer": "More than 5 times a day",
                    "score": 4
                  },
                  {
                    "answer": "3-5 times a day",
                    "score": 2
                  },
                  {
                    "answer": "Less than 3 times a day",
                    "score": 1
                  }
                ],
                "question": "How often does the child go to urinate?"
              },
              {
                "answers": [
                  {
                    "answer": "Yes",
                    "score": 4
                  },
                  {
                    "answer": "No",
                    "score": 0
                  }
                ],
                "question": "Is your child often thirsty?"
              },
              {
                "answers": [
                  {
                    "answer": "Yes",
                    "score": 3
                  },
                  {
                    "answer": "No",
                    "score": 0
                  }
                ],
                "question": "Does your child get tired quickly?"
              }
            ],
            "symptomps": [
              {
                "isActive": false,
                "name": "Frequent urination"
              },
              {
                "isActive": false,
                "name": "intense thirst"
              },
              {
                "isActive": false,
                "name": "Fatigue"
              }
            ]
          },
          {
            "name": "Asthma",
            "questions": [
              {
                "answers": [
                  {
                    "answer": "Almost every day",
                    "score": 5
                  },
                  {
                    "answer": "Few times a week",
                    "score": 3
                  },
                  {
                    "answer": "Less than once a week",
                    "score": 1
                  }
                ],
                "question": "How often does child have shortness of breath?"
              },
              {
                "answers": [
                  {
                    "answer": "Yes",
                    "score": 4
                  },
                  {
                    "answer": "No",
                    "score": 0
                  }
                ],
                "question": "Do you hear wheezing when child breathe?"
              },
              {
                "answers": [
                  {
                    "answer": "Yes",
                    "score": 3
                  },
                  {
                    "answer": "No",
                    "score": 0
                  }
                ],
                "question": "Does the child feel difficulty in inhaling and exhaling?"
              }
            ],
            "symptomps": [
              {
                "isActive": false,
                "name": "Dyspnea"
              },
              {
                "isActive": false,
                "name": "wheezing"
              },
              {
                "isActive": false,
                "name": "Difficulty inhaling and exhaling"
              }
            ]
          },
          {
            "name": "Acute gastritis",
            "questions": [
              {
                "answers": [
                  {
                    "answer": "Less than a week",
                    "score": 2
                  },
                  {
                    "answer": "Few weeks",
                    "score": 3
                  },
                  {
                    "answer": "More than a month",
                    "score": 4
                  }
                ],
                "question": "How long have the child had stomach pain?"
              },
              {
                "answers": [
                  {
                    "answer": "Yes",
                    "score": 3
                  },
                  {
                    "answer": "No",
                    "score": 0
                  }
                ],
                "question": "Does the child often experience nausea?"
              },
              {
                "answers": [
                  {
                    "answer": "Yes",
                    "score": 4
                  },
                  {
                    "answer": "No",
                    "score": 0
                  }
                ],
                "question": "Do you vomit?"
              }
            ],
            "symptomps": [
              {
                "isActive": false,
                "name": "Stomach ache"
              },
              {
                "isActive": false,
                "name": "Nausea"
              },
              {
                "isActive": false,
                "name": "Vomit"
              }
            ]
          },
          {
            "name": "Migraine",
            "questions": [
              {
                "answers": [
                  {
                    "answer": "Yes",
                    "score": 4
                  },
                  {
                    "answer": "No",
                    "score": 0
                  }
                ],
                "question": "Do you have unilateral headache?"
              },
              {
                "answers": [
                  {
                    "answer": "Yes",
                    "score": 4
                  },
                  {
                    "answer": "No",
                    "score": 0
                  }
                ],
                "question": "Do you have a throbbing pain in your head?"
              },
              {
                "answers": [
                  {
                    "answer": "Yes",
                    "score": 3
                  },
                  {
                    "answer": "No",
                    "score": 0
                  }
                ],
                "question": "Do you experience discomfort from bright light?"
              }
            ],
            "symptomps": [
              {
                "isActive": false,
                "name": "Unilateral headache"
              },
              {
                "isActive": false,
                "name": "Throbbing pain"
              },
              {
                "isActive": false,
                "name": "Photophobia"
              }
            ]
          },
          {
            "name": "Depression",
            "questions": [
              {
                "answers": [
                  {
                    "answer": "Yes",
                    "score": 4
                  },
                  {
                    "answer": "No",
                    "score": 0
                  }
                ],
                "question": "Is your child experiencing low mood?"
              },
              {
                "answers": [
                  {
                    "answer": "Yes",
                    "score": 3
                  },
                  {
                    "answer": "No",
                    "score": 0
                  }
                ],
                "question": "Does child feel morning anxiety?"
              },
              {
                "answers": [
                  {
                    "answer": "Yes",
                    "score": 4
                  },
                  {
                    "answer": "No",
                    "score": 0
                  }
                ],
                "question": "Has child lost interest in your old hobbies?"
              }
            ],
            "symptomps": [
              {
                "isActive": false,
                "name": "low mood"
              },
              {
                "isActive": false,
                "name": "morning alert"
              },
              {
                "isActive": false,
                "name": "Loss of interest in hobbies"
              }
            ]
          },
          {
            "name": "Pneumonia",
            "questions": [
              {
                "answers": [
                  {
                    "answer": "No",
                    "score": 1
                  },
                  {
                    "answer": "Not sure",
                    "score": 3
                  },
                  {
                    "answer": "Yes",
                    "score": 5
                  }
                ],
                "question": "Does the cough radiate pain to the child's chest?"
              },
              {
                "answers": [
                  {
                    "answer": "Yes",
                    "score": 3
                  },
                  {
                    "answer": "No",
                    "score": 0
                  }
                ],
                "question": "Is there a strong weakness?"
              },
              {
                "answers": [
                  {
                    "answer": "Yes",
                    "score": 4
                  },
                  {
                    "answer": "No",
                    "score": 0
                  }
                ],
                "question": "Does the child have shortness of breath with seizures?"
              }
            ],
            "symptomps": [
              {
                "isActive": false,
                "name": "Cough"
              },
              {
                "isActive": false,
                "name": "Temperature"
              },
              {
                "isActive": false,
                "name": "dyspnea"
              }
            ]
          },
          {
            "name": "Anemia",
            "questions": [
              {
                "answers": [
                  {
                    "answer": "Yes",
                    "score": 4
                  },
                  {
                    "answer": "No",
                    "score": 0
                  }
                ],
                "question": "Does the child have pale skin?"
              },
              {
                "answers": [
                  {
                    "answer": "Yes",
                    "score": 3
                  },
                  {
                    "answer": "No",
                    "score": 0
                  }
                ],
                "question": "Does he have bouts of fatigue?"
              },
              {
                "answers": [
                  {
                    "answer": "Yes",
                    "score": 3
                  },
                  {
                    "answer": "No",
                    "score": 0
                  }
                ],
                "question": "Does the child feel dizzy during physical activity?"
              }
            ],
            "symptomps": [
              {
                "isActive": false,
                "name": "Weakness"
              },
              {
                "isActive": false,
                "name": "Pale skin"
              },
              {
                "isActive": false,
                "name": "Fatigue"
              }
            ]
          },
          {
            "name": "Gastroesophageal reflux disease",
            "questions": [
              {
                "answers": [
                  {
                    "answer": "Yes",
                    "score": 4
                  },
                  {
                    "answer": "No",
                    "score": 0
                  }
                ],
                "question": "Is child experiencing chest burn after eating?"
              },
              {
                "answers": [
                  {
                    "answer": "Yes",
                    "score": 3
                  },
                  {
                    "answer": "No",
                    "score": 0
                  }
                ],
                "question": "Does your child have regurgitation (ejection of food from the stomach into the esophagus)?"
              },
              {
                "answers": [
                  {
                    "answer": "Yes",
                    "score": 3
                  },
                  {
                    "answer": "No",
                    "score": 0
                  }
                ],
                "question": "Is your child having difficulty swallowing food?"
              }
            ],
            "symptomps": [
              {
                "isActive": false,
                "name": "Burn in the chest"
              },
              {
                "isActive": false,
                "name": "Regurgitation"
              },
              {
                "isActive": false,
                "name": "Difficulty swallowing"
              }
            ]
          },
          {
            "name": "Gastroduodenitis",
            "questions": [
              {
                "answers": [
                  {
                    "answer": "Constantly",
                    "score": 5
                  },
                  {
                    "answer": "Periodically",
                    "score": 3
                  },
                  {
                    "answer": "Rarely",
                    "score": 1
                  }
                ],
                "question": "How often does the child have pain in the upper abdomen?"
              },
              {
                "answers": [
                  {
                    "answer": "Yes",
                    "score": 3
                  },
                  {
                    "answer": "No",
                    "score": 0
                  }
                ],
                "question": "Does child experience heartburn after eating?"
              },
              {
                "answers": [
                  {
                    "answer": "Yes",
                    "score": 3
                  },
                  {
                    "answer": "No",
                    "score": 0
                  }
                ],
                "question": "Does child have a reduced appetite?"
              }
            ],
            "symptomps": [
              {
                "isActive": false,
                "name": "Pain in the upper abdomen"
              },
              {
                "isActive": false,
                "name": "Heartburn"
              },
              {
                "isActive": false,
                "name": "poor appetite"
              }
            ]
          }
        ]
''';

// Преобразование JSON в список
List<Map<String, dynamic>> listOfDiagnoz =
    json.decode(jsonStr).cast<Map<String, dynamic>>();

String jsonStrDoctors = '''[
        {
          "name": "Sayandinova Nazgul Abilievna",
          "Experience": "18 years",
          "price": "3000",
          "rating": "4",
          "imgURL": "https://docok.kz/files/doctor/big/21513f54206a7153f5f9fc6d10d07fc0.jpg",
          "Diagnozes":[
            "Bronchitis",
            "Flu",
            "Angina",
            "Pneumonia"
          ]
        },
        {
          "name": "Ibragimova Dilorom Kamilzhanovna",
          "Experience": "16 years",
          "price": "12000",
          "rating": "5",
          "imgURL": "https://docok.kz/files/doctor/big/2224e943ae4e2ebf6f826a0b30ceaaef.jpg",
          "Diagnozes":[
            "Bronchitis",
            "Flu",
            "Angina",
            "Pneumonia"
          ]
        },
        {
          "name": "Nurtaeva Aliya Alievna",
          "Experience": "29 years",
          "price": "5000",
          "rating": "4",
          "imgURL": "https://docok.kz/files/doctor/big/cfef51cc6f22469cc906b590c0c7294a.jpg",
          "Diagnozes":[
            "Bronchitis",
            "Flu",
            "Angina",
            "Pneumonia",
            "Asthma"
          ]
        },
        {
          "name": "Eleugozhina Elmira Bekmukanovna",
          "Experience": " 23 years",
          "price": "7000",
          "rating": "4",
          "imgURL": "https://docok.kz/files/doctor/big/bfdf2125f61c323eaafb15bd700d1658.jpg",
          "Diagnozes":[
            "Bronchitis",
            "Flu",
            "Angina",
            "Pneumonia",
            "Asthma"
          ]
        },
        {
          "name": "Robbek Ivan Gavrilyevich",
          "Experience": " 7 years",
          "price": "8000",
          "rating": "5",
          "imgURL": "https://docok.kz/files/doctor/big/8006aeb8965a067fafc71086f0ccb016.jpg",
          "Diagnozes":[
            "Bronchitis",
            "Flu",
            "Angina",
            "Pneumonia",
            "Asthma"
          ]
        },
        {
          "name": "Kurakbayeva Aziza Sultanovna",
          "Experience": "10 years",
          "price": "5000",
          "rating": "4",
          "imgURL": "https://docok.kz/files/doctor/big/8006aeb8965a067fafc71086f0ccb016.jpg",
          "Diagnozes":[
            "Bronchitis",
            "Flu",
            "Angina",
            "Pneumonia",
            "Asthma"
          ]
        },
        {
          "name": "Gurevich Dmitry Vladimirovich",
          "Experience": "28 years",
          "price": "20000",
          "rating": "5",
          "imgURL": "https://docok.kz/files/doctor/big/c6a62cfc34139ae7531ba99936131a23.jpg",
          "Diagnozes":[
            "Bronchitis",
            "Flu",
            "Angina",
            "Pneumonia",
            "Asthma",
            "Diabetes",
            "Acute gastritis",
            "Migraine",
            "Depression",
            "Anemia",
            "Gastroesophageal reflux disease",
            "Gastroduodenitis"
          ]
        },
        {
          "name": "Asylbekova Zhannat Zeinollaevna",
          "Experience": "41 years",
          "price": "10000",
          "rating": "5",
          "imgURL": "https://docok.kz/files/doctor/big/ccccf4a51ecaeb11d3ca291a7eb71d57.jpg",
          "Diagnozes":[
            "Bronchitis",
            "Flu",
            "Angina",
            "Pneumonia",
            "Asthma",
            "Diabetes",
            "Acute gastritis",
            "Migraine",
            "Depression",
            "Anemia",
            "Gastroesophageal reflux disease",
            "Gastroduodenitis"
          ]
        },
        {
          "name": "Grigorieva Anastasia Nikolaevna",
          "Experience": "14 years",
          "price": "12000",
          "rating": "4",
          "imgURL": "https://docok.kz/files/doctor/big/f4628ade00ee741272355c0a02942566.jpg",
          "Diagnozes":[
            "Bronchitis",
            "Flu",
            "Angina",
            "Pneumonia",
            "Asthma",
            "Diabetes",
            "Acute gastritis",
            "Migraine",
            "Depression",
            "Anemia",
            "Gastroesophageal reflux disease",
            "Gastroduodenitis"
          ]
        },
        {
          "name": "Khan Natalya Viktorovna",
          "Experience": "8 years",
          "price": "8000",
          "rating": "5",
          "imgURL": "https://docok.kz/files/doctor/big/0235a3d664c16b25d7518344b43442d2.jpg",
          "Diagnozes":[
            "Diabetes",
            "Acute gastritis",
            "Gastroesophageal reflux disease",
            "Gastroduodenitis"
          ]
        },
        {
          "name": "Suleimenova Dinara Sagandykovna",
          "Experience": "28 years",
          "price": "18000",
          "rating": "4",
          "imgURL": "https://docok.kz/files/doctor/big/f063f98991e24748d54b1e23e87bfc22.jpg",
          "Diagnozes":[
            "Diabetes",
            "Acute gastritis",
            "Gastroesophageal reflux disease",
            "Gastroduodenitis"
          ]
        },
        {
          "name": "Eslamgalieva Sholpan Nurlanovna",
          "Experience": "18 years",
          "price": "8000",
          "rating": "5",
          "imgURL": "https://docok.kz/files/doctor/big/6cab7e0fa9654fad0f9cd63c7683fe30.jpg",
          "Diagnozes":[
            "Diabetes",
            "Acute gastritis",
            "Gastroesophageal reflux disease",
            "Gastroduodenitis"
          ]
        },
        {
          "name": "Stroikov Petr Ivanovich",
          "Experience": "39 years",
          "price": "3500",
          "rating": "4",
          "imgURL": "https://docok.kz/files/doctor/big/a03548cf20b92910ca668fa99b9715ff.jpg",
          "Diagnozes":[
            "Migraine",
            "Anemia"
          ]
        },
        {
          "name": "Terenova Akzada Yesenamanovna",
          "Experience": "29 years",
          "price": "5000",
          "rating": "4",
          "imgURL": "https://docok.kz/files/doctor/big/86ada3aa634bf7dd2eba9c8a1358bfd3.jpg",
          "Diagnozes":[
            "Migraine",
            "Anemia"
          ]
        },
        {
          "name": "Maltseva Inna Vladimirovna",
          "Experience": "29 years",
          "price": "10000",
          "rating": "5",
          "imgURL": "https://docok.kz/files/doctor/big/8405f889f87fa0b5826b6bfb5ddb97e6.jpg",
          "Diagnozes":[
            "Migraine",
            "Anemia"
          ]
        },
        {
          "name": "Shcherbinina Olga Mikhailovna",
          "Experience": "21 years",
          "price": "7000",
          "rating": "4",
          "imgURL": "https://docok.kz/files/doctor/big/4df678d1789201374f4aa87066e9d92a.jpg",
          "Diagnozes":[
            "Migraine",
            "Anemia"
          ]
        },
        {
          "name": "Dolzhenko Galina Petrovna",
          "Experience": "32 years",
          "price": "12000",
          "rating": "4",
          "imgURL": "https://docok.kz/files/doctor/big/c1d2b72ebc81145bd8afaddb83dbea1b.jpg",
          "Diagnozes":[
            "Depression"
          ]
        },
        {
          "name": "Zeynetullaeva-Verbovaya Elmira Hamidullaevna",
          "Experience": "14 years",
          "price": "23000",
          "rating": "3",
          "imgURL": "https://docok.kz/files/doctor/big/ec85ad641dc6c38589151f9066eabc08.jpg",
          "Diagnozes":[
            "Depression"
          ]
        },
      {
          "name": "Petrova Zhanna Maratovna",
          "Experience": "7 years",
          "price": "30000",
          "rating": "3",
          "imgURL": "https://docok.kz/files/doctor/big/c5132faf6c164dd7b38baa1317e4efb1.jpg",
          "Diagnozes":[
            "Depression"
          ]
        }
      ]''';
List<Map<String, dynamic>> listOfDoctors =
    json.decode(jsonStrDoctors).cast<Map<String, dynamic>>();
