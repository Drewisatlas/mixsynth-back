# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user1 = User.create(username: 'user1', password: 'password', email: 'user1@gmail.com')
user2 = User.create(username: 'user2', password: 'password', email: 'user2@gmail.com')
user3 = User.create(username: 'drewisatlas', password: 'password', email: 'drewisatlas@gmail.com')

synth1 = Synthesizer.create(user_id: 3, name: 'Sine is fine', waveform: 'sine', gain: 0.7)
synth2 = Synthesizer.create(user_id: 3, name: 'Mario', waveform: 'square', gain: 0.5)
synth3 = Synthesizer.create(user_id: 3, name: "Buzz's GF... WOOF!", waveform: 'sawtooth', gain: 0.7)
synth4 = Synthesizer.create(user_id: 1, name: "My first synth", waveform: 'sawtooth', gain: 0.7)

likedSynth1= UserSynthesizer.create(user_id: 3, synthesizer_id: 4)
