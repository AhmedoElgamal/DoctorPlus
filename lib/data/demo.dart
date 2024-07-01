import 'package:doctor_plus/data/model/doctor.dart';
import 'package:doctor_plus/data/model/doctor_working_.dart';
import 'package:doctor_plus/data/model/patient.dart';

const Map<String, Map<String, dynamic>> patientInfo = {
  "smoke": {
    "title": "Smoking Options",
    "options": ['Select Choice', 'Never', 'Occasionally', 'Regularly']
  },
  "disease": {
    "title": "Disease Options",
    "options": [
      'Select Choice',
      'None',
      'Diabetes',
      'Hypertension',
      'Heart Disease',
      'Asthma'
    ]
  },
  "blood": {
    "title": "Blood Options",
    "options": [
      'Select Choice',
      'A+',
      'B+',
      'AB+',
      'O+',
      'A-',
      'B-',
      'AB-',
      'O-'
    ]
  },
  "medication": {
    "title": "Medication Options",
    "options": [
      'Select Choice',
      'None',
      'Aspirin',
      'Insulin',
      'Antibiotics',
      'Painkillers'
    ]
  },
  "exercise": {
    "title": "Exercise Frequency",
    "options": ['Select Choice', 'None', 'Occasionally', 'Regularly', 'Daily']
  },
  "diet": {
    "title": "Dietary Preferences",
    "options": [
      'Select Choice',
      'Vegetarian',
      'Vegan',
      'Pescatarian',
      'Omnivore'
    ]
  },
  "sleep": {
    "title": "Sleep Duration",
    "options": [
      'Select Choice',
      'Less than 5 hours',
      '5-6 hours',
      '6-7 hours',
      '7-8 hours',
      'More than 8 hours'
    ]
  },
  "hydration": {
    "title": "Hydration Level",
    "options": [
      'Select Choice',
      'Less than 1 liter',
      '1-2 liters',
      '2-3 liters',
      'More than 3 liters'
    ]
  },
  "stress": {
    "title": "Stress Levels",
    "options": ['Select Choice', 'Low', 'Moderate', 'High', 'Very High']
  },
  "mentalHealth": {
    "title": "Mental Health Status",
    "options": [
      'Select Choice',
      'Stable',
      'Anxious',
      'Depressed',
      'Bipolar',
      'Schizophrenia'
    ]
  },
};

const List<String> doctorSpecialties = [
  'Select Choice',
  'Diabetes',
  'Plastic Surgery',
  'Radiology',
  'Neurology',
  'Otology',
  'Ophthalmology',
  'Phinology',
  'Oral Health',
  'Cardiology',
  'Gastroenterology',
  'Pulmonology',
  'Hepatology',
  'Gynecology',
  'Urology',
  'Osteology',
  'Orthopedics',
  // 'Endocrinology',
  // 'Anesthesiology',
  // 'Sports Medicine',
  // 'Plastic Surgery',
  // 'Family Medicine',
  // 'Gastroenterology',
  // 'Medical Genetics',
  // 'Internal Medicine',
  // 'Infectious Disease',
  // 'Emergency Medicine',
  // 'Otolaryngology (ENT)',
  // 'Critical Care Medicine',
  // 'Allergy and Immunology',
  // 'Obstetrics and Gynecology',
  // 'Physical Medicine and Rehabilitation',
];

const List<String> universities = [
  'Select Choice',
  'Cairo University',
  'Tanta University',
  'Minia University',
  'Assiut University',
  'Zagazig University',
  'Mansoura University',
  'Ain Shams University',
  'Alexandria University',
  'Suez Canal University',
  'South Valley University',
  'Misr University for Science and Technology (MUST)',
];

const List<String> doctorDgrees = [
  'Select Choice',
  'GP',
  'Master',
  'PHD',
  'Fellowship',
];

List<Doctor> demoDoctorData = [
  Doctor.gen(
    fName: "Muhammed",
    lName: "Gamal",
    email: "dr.jimmy@gmail.com",
    specialty: "Radiology",
    graduationDate: "2024-06-28",
    university: "Alexandria University",
    phone: "0123456789",
    gender: "Male",
    location: "37.4219983,-122.084",
    birthDate: "2024-06-28",
    workingDays: DoctorWorkingHours(days: [
      'Monday',
      'Tuesday',
      'Wednesday',
      'Thursday',
      'Friday',
      'Saturday',
      'Sunday'
    ], startTimes: "1", endTimes: "6"),
    degrees: ['Master', 'Fellowship'],
    description:
        "Dr. Jimmy is a board-certified cardiologist with over 15 years of experience in diagnosing and treating cardiovascular diseases. She completed her medical degree at Harvard Medical School and further specialized in cardiology during her residency at Johns Hopkins Hospital. Dr. Doe is known for her patient-centered approach, combining advanced medical knowledge with compassionate care",
    fees: 500,
    patients: 25,
  ),
  Doctor.gen(
    fName: "Amr",
    lName: "yahia",
    email: "dr.amr@gmail.com",
    specialty: "Ophthalmology",
    graduationDate: "2024-06-28",
    university: "Alexandria University",
    phone: "0123456789",
    gender: "Male",
    location: "37.4219983,-122.084",
    birthDate: "2024-06-28",
    workingDays: DoctorWorkingHours(days: [
      'Monday',
      'Tuesday',
      'Wednesday',
      'Thursday',
      'Friday',
      'Saturday',
      'Sunday'
    ], startTimes: "1", endTimes: "6"),
    degrees: ['Master', 'Fellowship'],
    description:
        "Dr. Jimmy is a board-certified cardiologist with over 15 years of experience in diagnosing and treating cardiovascular diseases. She completed her medical degree at Harvard Medical School and further specialized in cardiology during her residency at Johns Hopkins Hospital. Dr. Doe is known for her patient-centered approach, combining advanced medical knowledge with compassionate care",
    fees: 500,
    patients: 25,
  ),
  Doctor.gen(
    fName: "Ahmed",
    lName: "El_Gamal",
    email: "dr.elgamal@gmail.com",
    specialty: "Gynecology",
    graduationDate: "2024-06-28",
    university: "Alexandria University",
    phone: "0123456789",
    gender: "Male",
    location: "37.4219983,-122.084",
    birthDate: "2024-06-28",
    workingDays: DoctorWorkingHours(days: [
      'Monday',
      'Tuesday',
      'Wednesday',
      'Thursday',
      'Friday',
      'Saturday',
      'Sunday'
    ], startTimes: "1", endTimes: "6"),
    degrees: ['Master', 'Fellowship'],
    description:
        "Dr. Jimmy is a board-certified cardiologist with over 15 years of experience in diagnosing and treating cardiovascular diseases. She completed her medical degree at Harvard Medical School and further specialized in cardiology during her residency at Johns Hopkins Hospital. Dr. Doe is known for her patient-centered approach, combining advanced medical knowledge with compassionate care",
    fees: 500,
    patients: 25,
  ),
  Doctor.gen(
    fName: "Abdelrahman",
    lName: "khallaf",
    email: "dr.abdo@gmail.com",
    specialty: "Urology",
    graduationDate: "2024-06-28",
    university: "Alexandria University",
    phone: "0123456789",
    gender: "Male",
    location: "37.4219983,-122.084",
    birthDate: "2024-06-28",
    workingDays: DoctorWorkingHours(days: [
      'Monday',
      'Tuesday',
      'Wednesday',
      'Thursday',
      'Friday',
      'Saturday',
      'Sunday'
    ], startTimes: "1", endTimes: "6"),
    degrees: ['Master', 'Fellowship'],
    description:
        "Dr. Jimmy is a board-certified cardiologist with over 15 years of experience in diagnosing and treating cardiovascular diseases. She completed her medical degree at Harvard Medical School and further specialized in cardiology during her residency at Johns Hopkins Hospital. Dr. Doe is known for her patient-centered approach, combining advanced medical knowledge with compassionate care",
    fees: 500,
    patients: 25,
  ),
  Doctor.gen(
    fName: "Ahmed",
    lName: "Amgad",
    email: "dr.amgad@gmail.com",
    specialty: "Neurology",
    graduationDate: "2024-06-28",
    university: "Alexandria University",
    phone: "0123456789",
    gender: "Male",
    location: "37.4219983,-122.084",
    birthDate: "2024-06-28",
    workingDays: DoctorWorkingHours(days: [
      'Monday',
      'Tuesday',
      'Wednesday',
      'Thursday',
      'Friday',
      'Saturday',
      'Sunday'
    ], startTimes: "1", endTimes: "6"),
    degrees: ['Master', 'Fellowship'],
    description:
        "Dr. Jimmy is a board-certified cardiologist with over 15 years of experience in diagnosing and treating cardiovascular diseases. She completed her medical degree at Harvard Medical School and further specialized in cardiology during her residency at Johns Hopkins Hospital. Dr. Doe is known for her patient-centered approach, combining advanced medical knowledge with compassionate care",
    fees: 500,
    patients: 25,
  ),
  Doctor.gen(
    fName: "Ahmed",
    lName: "Ghabour",
    email: "dr.ghabour@gmail.com",
    specialty: "Hepatology",
    graduationDate: "2024-06-28",
    university: "Alexandria University",
    phone: "0123456789",
    gender: "Male",
    location: "37.4219983,-122.084",
    birthDate: "2024-06-28",
    workingDays: DoctorWorkingHours(days: [
      'Monday',
      'Tuesday',
      'Wednesday',
      'Thursday',
      'Friday',
      'Saturday',
      'Sunday'
    ], startTimes: "1", endTimes: "6"),
    degrees: ['Master', 'Fellowship'],
    description:
        "Dr. Jimmy is a board-certified cardiologist with over 15 years of experience in diagnosing and treating cardiovascular diseases.",
    fees: 500,
    patients: 25,
  ),

  /* Doctor.gen(
    fName: "Amr",
    lName: "yahia",
    email: "dr.amr_pulmonology@gmail.com",
    specialty: "Pulmonology",
    graduationDate: "2024-06-28",
    university: "Alexandria University",
    phone: "0123456789",
    gender: "Male",
    location: "37.4219983,-122.084",
    birthDate: "2024-06-28",
    workingDays: DoctorWorkingHours(days: [
      'Monday',
      'Tuesday',
      'Wednesday',
      'Thursday',
      'Friday',
      'Saturday',
      'Sunday'
    ], startTimes: "1", endTimes: "6"),
    degrees: ['Master', 'Fellowship'],
    description:
        "Dr. Jimmy is a board-certified cardiologist with over 15 years of experience in diagnosing and treating cardiovascular diseases. She completed her medical degree at Harvard Medical School and further specialized in cardiology during her residency at Johns Hopkins Hospital. Dr. Doe is known for her patient-centered approach, combining advanced medical knowledge with compassionate care",
    fees: 500,
    patients: 25,
  ),
  Doctor.gen(
    fName: "Ahmed",
    lName: "El_Gamal",
    email: "dr.el_gamal_cardiology@gmail.com",
    specialty: "Cardiology",
    graduationDate: "2024-06-28",
    university: "Alexandria University",
    phone: "0123456789",
    gender: "Male",
    location: "37.4219983,-122.084",
    birthDate: "2024-06-28",
    workingDays: DoctorWorkingHours(days: [
      'Monday',
      'Tuesday',
      'Wednesday',
      'Thursday',
      'Friday',
      'Saturday',
      'Sunday'
    ], startTimes: "1", endTimes: "6"),
    degrees: ['Master', 'Fellowship'],
    description:
        "Dr. Jimmy is a board-certified cardiologist with over 15 years of experience in diagnosing and treating cardiovascular diseases. She completed her medical degree at Harvard Medical School and further specialized in cardiology during her residency at Johns Hopkins Hospital. Dr. Doe is known for her patient-centered approach, combining advanced medical knowledge with compassionate care",
    fees: 500,
    patients: 25,
  ),
  Doctor.gen(
    fName: "Abdelrahman",
    lName: "khallaf",
    email: "dr.abdo_phinology@gmail.com",
    specialty: "Phinology",
    graduationDate: "2024-06-28",
    university: "Alexandria University",
    phone: "0123456789",
    gender: "Male",
    location: "37.4219983,-122.084",
    birthDate: "2024-06-28",
    workingDays: DoctorWorkingHours(days: [
      'Monday',
      'Tuesday',
      'Wednesday',
      'Thursday',
      'Friday',
      'Saturday',
      'Sunday'
    ], startTimes: "1", endTimes: "6"),
    degrees: ['Master', 'Fellowship'],
    description:
        "Dr. Jimmy is a board-certified cardiologist with over 15 years of experience in diagnosing and treating cardiovascular diseases. She completed her medical degree at Harvard Medical School and further specialized in cardiology during her residency at Johns Hopkins Hospital. Dr. Doe is known for her patient-centered approach, combining advanced medical knowledge with compassionate care",
    fees: 500,
    patients: 25,
  ),
  Doctor.gen(
    fName: "Ahmed",
    lName: "Amgad",
    email: "dr.amgad_osteology@gmail.com",
    specialty: "Osteology",
    graduationDate: "2024-06-28",
    university: "Alexandria University",
    phone: "0123456789",
    gender: "Male",
    location: "37.4219983,-122.084",
    birthDate: "2024-06-28",
    workingDays: DoctorWorkingHours(days: [
      'Monday',
      'Tuesday',
      'Wednesday',
      'Thursday',
      'Friday',
      'Saturday',
      'Sunday'
    ], startTimes: "1", endTimes: "6"),
    degrees: ['Master', 'Fellowship'],
    description:
        "Dr. Jimmy is a board-certified cardiologist with over 15 years of experience in diagnosing and treating cardiovascular diseases. She completed her medical degree at Harvard Medical School and further specialized in cardiology during her residency at Johns Hopkins Hospital. Dr. Doe is known for her patient-centered approach, combining advanced medical knowledge with compassionate care",
    fees: 500,
    patients: 25,
  ),
  Doctor.gen(
    fName: "Muhammed",
    lName: "Gamal",
    email: "dr.jimmy_plastic_surgery@gmail.com",
    specialty: "Plastic Surgery",
    graduationDate: "2024-06-28",
    university: "Alexandria University",
    phone: "0123456789",
    gender: "Male",
    location: "37.4219983,-122.084",
    birthDate: "2024-06-28",
    workingDays: DoctorWorkingHours(days: [
      'Monday',
      'Tuesday',
      'Wednesday',
      'Thursday',
      'Friday',
      'Saturday',
      'Sunday'
    ], startTimes: "1", endTimes: "6"),
    degrees: ['Master', 'Fellowship'],
    description:
        "Dr. Jimmy is a board-certified cardiologist with over 15 years of experience in diagnosing and treating cardiovascular diseases. She completed her medical degree at Harvard Medical School and further specialized in cardiology during her residency at Johns Hopkins Hospital. Dr. Doe is known for her patient-centered approach, combining advanced medical knowledge with compassionate care",
    fees: 500,
    patients: 25,
  ),
  Doctor.gen(
    fName: "Amr",
    lName: "yahia",
    email: "dr.amr_oral_health@gmail.com",
    specialty: "Oral Health",
    graduationDate: "2024-06-28",
    university: "Alexandria University",
    phone: "0123456789",
    gender: "Male",
    location: "37.4219983,-122.084",
    birthDate: "2024-06-28",
    workingDays: DoctorWorkingHours(days: [
      'Monday',
      'Tuesday',
      'Wednesday',
      'Thursday',
      'Friday',
      'Saturday',
      'Sunday'
    ], startTimes: "1", endTimes: "6"),
    degrees: ['Master', 'Fellowship'],
    description:
        "Dr. Jimmy is a board-certified cardiologist with over 15 years of experience in diagnosing and treating cardiovascular diseases. She completed her medical degree at Harvard Medical School and further specialized in cardiology during her residency at Johns Hopkins Hospital. Dr. Doe is known for her patient-centered approach, combining advanced medical knowledge with compassionate care",
    fees: 500,
    patients: 25,
  ),
  Doctor.gen(
    fName: "Ahmed",
    lName: "El_Gamal",
    email: "dr.el_gamal_gastroenterology@gmail.com",
    specialty: "Gastroenterology",
    graduationDate: "2024-06-28",
    university: "Alexandria University",
    phone: "0123456789",
    gender: "Male",
    location: "37.4219983,-122.084",
    birthDate: "2024-06-28",
    workingDays: DoctorWorkingHours(days: [
      'Monday',
      'Tuesday',
      'Wednesday',
      'Thursday',
      'Friday',
      'Saturday',
      'Sunday'
    ], startTimes: "1", endTimes: "6"),
    degrees: ['Master', 'Fellowship'],
    description:
        "Dr. Jimmy is a board-certified cardiologist with over 15 years of experience in diagnosing and treating cardiovascular diseases. She completed her medical degree at Harvard Medical School and further specialized in cardiology during her residency at Johns Hopkins Hospital. Dr. Doe is known for her patient-centered approach, combining advanced medical knowledge with compassionate care",
    fees: 500,
    patients: 25,
  ),
  Doctor.gen(
    fName: "Abdelrahman",
    lName: "khallaf",
    email: "dr.abdo_otology@gmail.com",
    specialty: "Otology",
    graduationDate: "2024-06-28",
    university: "Alexandria University",
    phone: "0123456789",
    gender: "Male",
    location: "37.4219983,-122.084",
    birthDate: "2024-06-28",
    workingDays: DoctorWorkingHours(days: [
      'Monday',
      'Tuesday',
      'Wednesday',
      'Thursday',
      'Friday',
      'Saturday',
      'Sunday'
    ], startTimes: "1", endTimes: "6"),
    degrees: ['Master', 'Fellowship'],
    description:
        "Dr. Jimmy is a board-certified cardiologist with over 15 years of experience in diagnosing and treating cardiovascular diseases. She completed her medical degree at Harvard Medical School and further specialized in cardiology during her residency at Johns Hopkins Hospital. Dr. Doe is known for her patient-centered approach, combining advanced medical knowledge with compassionate care",
    fees: 500,
    patients: 25,
  ),
  Doctor.gen(
    fName: "Ahmed",
    lName: "Amgad",
    email: "dr.amgad_hepatology@gmail.com",
    specialty: "Hepatology",
    graduationDate: "2024-06-28",
    university: "Alexandria University",
    phone: "0123456789",
    gender: "Male",
    location: "37.4219983,-122.084",
    birthDate: "2024-06-28",
    workingDays: DoctorWorkingHours(days: [
      'Monday',
      'Tuesday',
      'Wednesday',
      'Thursday',
      'Friday',
      'Saturday',
      'Sunday'
    ], startTimes: "1", endTimes: "6"),
    degrees: ['Master', 'Fellowship'],
    description:
        "Dr. Jimmy is a board-certified cardiologist with over 15 years of experience in diagnosing and treating cardiovascular diseases. She completed her medical degree at Harvard Medical School and further specialized in cardiology during her residency at Johns Hopkins Hospital. Dr. Doe is known for her patient-centered approach, combining advanced medical knowledge with compassionate care",
    fees: 500,
    patients: 25,
  ),
  Doctor.gen(
    fName: "Ahmed",
    lName: "Ghabour",
    email: "dr.ghabour_hepatology@gmail.com",
    specialty: "Hepatology",
    graduationDate: "2024-06-28",
    university: "Alexandria University",
    phone: "0123456789",
    gender: "Male",
    location: "37.4219983,-122.084",
    birthDate: "2024-06-28",
    workingDays: DoctorWorkingHours(days: [
      'Monday',
      'Tuesday',
      'Wednesday',
      'Thursday',
      'Friday',
      'Saturday',
      'Sunday'
    ], startTimes: "1", endTimes: "6"),
    degrees: ['Master', 'Fellowship'],
    description:
        "Dr. Jimmy is a board-certified cardiologist with over 15 years of experience in diagnosing and treating cardiovascular diseases. She completed her medical degree at Harvard Medical School and further specialized in cardiology during her residency at Johns Hopkins Hospital. Dr. Doe is known for her patient-centered approach, combining advanced medical knowledge with compassionate care",
    fees: 500,
    patients: 25,
  ),*/
];

List<Patient> demoPatientData = [
  Patient.gen(
    fName: "Ahmed",
    lName: "Ghabour",
    email: "ghabour@gmail.com",
    phone: "0123456789",
    gender: "Male",
    location: "37.4219983,-122.084",
    birthDate: "2024-06-28",
    diseases: ["Diabetes", "Hypertension"],
    medications: ["Aspirin", "Insulin"],
    blood: "A+",
    exercise: "Occasionally",
    diet: "Omnivore",
    sleep: "5-6 hours",
    hydration: "2-3 liters",
    stress: "Moderate",
    mentalHealth: "Depressed",
    smoke: "Occasionally",
  ),
  Patient.gen(
    fName: "Ahmed",
    lName: "Amgad",
    email: "amgad@gmail.com",
    phone: "0123456789",
    gender: "Male",
    location: "37.4219983,-122.084",
    birthDate: "2024-06-28",
    diseases: ["Diabetes", "Hypertension"],
    medications: ["Aspirin", "Insulin"],
    blood: "A+",
    exercise: "Occasionally",
    diet: "Omnivore",
    sleep: "5-6 hours",
    hydration: "2-3 liters",
    stress: "Moderate",
    mentalHealth: "Depressed",
    smoke: "Occasionally",
  ),
  Patient.gen(
    fName: "Ahmed",
    lName: "El_Gamal",
    email: "elgamal@gmail.com",
    phone: "0123456789",
    gender: "Male",
    location: "37.4219983,-122.084",
    birthDate: "2024-06-28",
    diseases: ["Diabetes", "Hypertension"],
    medications: ["Aspirin", "Insulin"],
    blood: "A+",
    exercise: "Occasionally",
    diet: "Omnivore",
    sleep: "5-6 hours",
    hydration: "2-3 liters",
    stress: "Moderate",
    mentalHealth: "Depressed",
    smoke: "Occasionally",
  ),
  Patient.gen(
    fName: "Amr",
    lName: "yahia",
    email: "amr@gmail.com",
    phone: "0123456789",
    gender: "Male",
    location: "37.4219983,-122.084",
    birthDate: "2024-06-28",
    diseases: ["Diabetes", "Hypertension"],
    medications: ["Aspirin", "Insulin"],
    blood: "A+",
    exercise: "Occasionally",
    diet: "Omnivore",
    sleep: "5-6 hours",
    hydration: "2-3 liters",
    stress: "Moderate",
    mentalHealth: "Depressed",
    smoke: "Occasionally",
  ),
  Patient.gen(
    fName: "Abdelrahman",
    lName: "Khallaf",
    email: "abdo@gmail.com",
    phone: "0123456789",
    gender: "Male",
    location: "37.4219983,-122.084",
    birthDate: "2024-06-28",
    diseases: ["Diabetes", "Hypertension"],
    medications: ["Aspirin", "Insulin"],
    blood: "A+",
    exercise: "Occasionally",
    diet: "Omnivore",
    sleep: "5-6 hours",
    hydration: "2-3 liters",
    stress: "Moderate",
    mentalHealth: "Depressed",
    smoke: "Occasionally",
  ),
  Patient.gen(
    fName: "Muhammed",
    lName: "Gamal",
    email: "jimmy@gmail.com",
    phone: "0123456789",
    gender: "Male",
    location: "37.4219983,-122.084",
    birthDate: "2024-06-28",
    diseases: ["Diabetes", "Hypertension"],
    medications: ["Aspirin", "Insulin"],
    blood: "A+",
    exercise: "Occasionally",
    diet: "Omnivore",
    sleep: "5-6 hours",
    hydration: "2-3 liters",
    stress: "Moderate",
    mentalHealth: "Depressed",
    smoke: "Occasionally",
  ),
];
