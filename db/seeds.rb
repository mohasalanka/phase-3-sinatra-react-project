puts "🌱 Seeding spices..."

puts "🌱 Seeding spices..."

# Seed your database here
surah1 = Surah.create(name: 'Al-Fatiha')
surah2 = Surah.create(name: 'Al-Baqarah')

Verse.create(content: 'In the name of Allah...', surah: surah1)
Verse.create(content: 'Praise be to Allah...', surah: surah1)
Verse.create(content: 'Alif Lam Mim...', surah: surah2)
Verse.create(content: 'This is the Book...', surah: surah2)

puts "✅ Done seeding!"


puts "✅ Done seeding!"
