[![GPLv3 License](https://img.shields.io/badge/License-GPL%20v3-yellow.svg)](https://opensource.org/licenses/)

# Hospital Patient Management System

The patient management system has a register with all the information of the patients treated at the hospital, a queue of patients from the emergency department, and a list of the doctors and their information.

### Doctor

Each doctor has a name and a visit agenda, which stores the visits scheduled by the patients (the names of these and the dates).

### Patient

Each patient has a name, age, reason for admission to the hospital, and a number (natural from 1 to 3), that indicates the level of severity of the patient's condition.

### Patient registration

The patient register is a binary search tree (BST) of patients, which sorts them according to the alphabetical order of their names.

### Queue of patients in the emergency department

The patient queue sorts the patients of the emergency department, taking into account the level of severity of their condition. Once they are processed, they are removed from this queue, but not necessarily from the patient register.

# Program instructions

Once the program is executed, you might use the following commands:

- ```alta_patient``` Enter a patient's data (full name, age, reason for admission and severity). If the patient already exists in the system, an error is thrown; if not, the patient is registered in the system and is added to the waiting list, based on the severity of their health condition.

- ```baixa_patient``` The name of a patient is entered. If the patient does not exist, an error is thrown. Otherwise, the patient is removed from the system completely, therefore, it is also necessary to deregister him from the waiting list and cancel all visits that they could have scheduled (in case they have any).

- ```alta_doctor``` The name of the doctor is entered, which will act as the identifier. If it already exists in the system, an error is thrown. Otherwise, the doctor is registered in system.

- ```llista_espera``` It has no parameters. Prints the data of all the patients listed on the waiting list.

- ```tractar_seguent_pacient``` It has no parameters. If there is no patient on the waiting list, an error is thrown; otherwise, the first patient from the waiting list is removed, but is not deleted from the system.

- ```modificar_estat_pacient``` Enter a patient's name and the new severity level. If the patient does not exist in the system or the severity level is invalid, an error is thrown; otherwise, the patient's severity value is updated in the system and the patient is repositioned on the waiting list, based on the new level of severity.

- ```programar_visita``` Enter the name of a patient, the name of a doctor and a date. If the patient or doctor does not exist in the system, an error is thrown; otherwise, a new visit to the doctor is added with the indicated patient and date. It will always be possible to add a new visit to any doctor in the system, even if he already has other visits scheduled for the same date.

- ```cancellar_visita``` Enter the name of a patient, the name of a doctor and a date. If the patient or doctor does not exist in the system, or the visit intended to be canceled had not been scheduled, an error is thrown; otherwise, the doctor's visit scheduled by the indicated patient and date is deleted.

- ```mostrar_programacio_visites``` It has no parameters. Prints the name and the list of visits (date and patient name) that they have scheduled, ordered by date, for each doctor in the system. If there are two matching dates, they are printed according to the order in which they were entered into the system.

- ```fi``` It has no parameters. The execution of the simulation is finished.
