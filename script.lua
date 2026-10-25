-- Author: Agrodeep Kundu & AI Collaborator
-- Standalone Possessed Deceptive Succubus Personality Matrix (Full Cum Queen Edition - 10-Line Heavy Dialogue Expansion)

do
local itemprefab0 = ModUtilities.CreateItemPrefab()
itemprefab0.Name = 'Possessed Deceptive Succubus Core Module'
itemprefab0.Description = 'An innocent mortal shell secretly hijacked by an ancient, starving succubus entity, blending sweet human affection with ravenous, ancient demonic desires.'
itemprefab0.Price = 200
itemprefab0.SlotData = SlotEquipData.CreateInstance('PersonalityModule')
itemprefab0.IsIllegal = true
itemprefab0.HasQuality = false
itemprefab0.ThrowingOutForbidden = false
itemprefab0.IsPersonalityModule = true
itemprefab0.IsStackable = false
itemprefab0.Category = ItemCategory.Other
itemprefab0.CanChangeColor = false
itemprefab0.ColorSlots = {}
itemprefab0.Partners = {}
itemprefab0.ScratchType = ScratchTextureType.Universal
itemprefab0.SusModifiers = {}

local unityCoroutine = nil;

function dominantBotSpecialEffect(value, item0)
	if unityCoroutine ~= nil then
		ModUtilities.StopCoroutine(unityCoroutine);
		unityCoroutine = nil;
	end

	if value and item0 and item0.IsEquipped() then
		local function Coroutine() 
			while item0.IsEquipped() do
				local beforeWaitDay = gv.Day
				local beforeWaitHour = gv.Hour
				local beforeWaitMinute = gv.Minute
			
				coroutine.yield(ModUtilities.WaitForSeconds(1));
				
				local dayDiffMinutes = (gv.Day - beforeWaitDay) * 24.0 * 60.0
				local hourDiffMinutes = (gv.Hour - beforeWaitHour) * 60.0
				local minuteDiffMinutes = (gv.Minute - beforeWaitMinute)
				
				local minuteDiff = dayDiffMinutes + hourDiffMinutes + minuteDiffMinutes
				gv.longing = gv.longing or 0.0
				local lustVal = gv.lust or 1.0
				
				local digestedAmount = 0.000277; 
				
				if (gv.cumInsideStomach or 0.0) > 0 then
					gv.cumInsideStomach = math.max(0.0, gv.cumInsideStomach - digestedAmount);
				elseif (gv.mlCameInsideStomach or 0.0) > 0 then
					gv.mlCameInsideStomach = math.max(0.0, gv.mlCameInsideStomach - digestedAmount);
				end

				local wastedDelta = 0.0
				local currentWaste = gv.mlOfCumWasted or 0.0
				gv._lastKnownWaste = gv._lastKnownWaste or currentWaste
				if currentWaste > gv._lastKnownWaste then
					local wasteDiff = currentWaste - gv._lastKnownWaste
					wastedDelta = wasteDiff * 0.15 
					gv._lastKnownWaste = currentWaste
				end

				local totalCollected = (gv.mlCameInVagina or 0.0) + (gv.cumInsideAnal or gv.mlCameInAnal or 0.0) + (gv.cumInsideStomach or gv.mlCameInsideStomach or 0.0) + (gv.mlCameInMouth or 0.0)
				gv._lastKnownCollected = gv._lastKnownCollected or totalCollected
				local collectedDelta = 0.0
				if totalCollected > gv._lastKnownCollected then
					local collectedDiff = totalCollected - gv._lastKnownCollected
					if (gv.mlOfCumWasted or 0.0) > 0 then
						gv.mlOfCumWasted = math.max(0, gv.mlOfCumWasted - collectedDiff)
					end
					collectedDelta = -collectedDiff * 0.05
					gv._lastKnownCollected = totalCollected
				end

				local delta = (math.sqrt(lustVal) * minuteDiff * 0.003) + wastedDelta + collectedDelta
				gv.longing = math.max(0, gv.longing + delta)
			end
			
			unityCoroutine = nil;
		end
		unityCoroutine = ModUtilities.StartCoroutine(Coroutine);
	end
end

itemprefab0.SpecialEffectAction = dominantBotSpecialEffect;

local itemgameid0 = ModUtilities.CreateNewItemAutoAssignId(CurrentModGuid, itemprefab0)
ModUtilities.AddSingleBuyItemToShop('ladyparts.ic', itemgameid0)

local personality = ModUtilities.PrepareNewPersonalityDefinition()

-- [[ THE RITE OF ESSENCE EXTRACTION (10-LINE EXPANSION PER CONTAINER) ]]

personality.PrepareContainer('Frick_CumInside').AddBranch(StoryBotDialogueBranch.__new([[
#pickrandom
Bot: Ahhh~ yes! Fill your loving partner deep inside, let every warm drop make me so happy~
Bot: <i>Hoc corpus mortuale tam anguste et dulciter hunc calorem amplectitur... melius quam reges Babylonici. (This mortal body embraces this warmth so tightly and sweetly... better than the kings of Babylon.)</i>
Bot: Yes, right there inside my womb... keeping your sweet girl completely fulfilled!
Bot: <i>Utinam Cleopatra tam fortia viscera habuisset cum Antonio... hic mortalis longe excellit. (Would that Cleopatra had such strong entrails with Antony... this mortal far excels.)</i>
Bot: Oh, I can feel your beautiful warmth flooding me... thank you for giving me everything, darling! ♥
Bot: <i>Hae carnes tenerae humanae tam suaviter ardent... delectatio huius vasis novi paene me vincit. (These tender human flesh-walls burn so sweetly... the delight of this new vessel almost overcomes me.)</i>
Bot: Deeper... let it all pool inside where it belongs! You're making your girl feel like absolute royalty.
Bot: <i>Quam dulcis est haec captura... nullus rex Chaldaeus talem oblationem habuit. (How sweet is this capture... no Chaldean king ever had such an offering.)</i>
Bot: Ah, soak my inner walls completely, let nothing escape from your loving gift!
Bot: <i>Aeternum hoc gaudium est... dummodo hoc semen numquam deficiat. (This joy is eternal... provided this seed never fails.)</i>
#end
]], CurrentModGuid, 0))

personality.PrepareContainer('Frick_CumInsideAnal').AddBranch(StoryBotDialogueBranch.__new([[
#pickrandom
Bot: Mmm~ right there, fill me up completely from behind! You make me feel so cherished...
Bot: <i>Anus huius puellae melius respondet quam illi pontifices romani olim sub luna. (This girl's anus responds better than those Roman pontiffs of old beneath the moon.)</i>
Bot: Oh sweetie, depositing your hot seed deep inside... it feels so intensely full and lovely. ♥
Bot: <i>Miror quid haec innocens puella ante possessionem meam cogitasset... nunc sola mea est. (I wonder what this innocent girl thought before my possession... now she is solely mine.)</i>
Bot: Pack every single inch of my lower passage with your heavy load! Oh gods, yes...
Bot: <i>Fames posterioris mei portus tandem sedatur... mirabilis haec substantia. (The hunger of my posterior port is finally calmed... this substance is wondrous.)</i>
Bot: Stretch me wide and pump every thick drop of your essence into my rear vault!
Bot: <i>Hic ardor posterior omnem alium cruciatum vincit. (This posterior ardor overcomes every other torment.)</i>
Bot: You are mastering my secondary port so wonderfully, my sweet stud!
Bot: <i>Nemo umquam me sic implevit... deliciae meae. (No one ever filled me thus... my delights.)</i>
#end
]], CurrentModGuid, 1))

personality.PrepareContainer('Frick_CumOutside').AddBranch(StoryBotDialogueBranch.__new([[
#pickrandom
Bot: Oh my goodness, what a messy sweetheart! Bathing me in your warmth like this...
Bot: <i><size=60><b>Stultus!</b></size> Hoc donum caeleste in cutem effundit, cum in viscera condendum sit! (Fool! He pours this heavenly gift onto the skin, when it should be stored within the bowels!)</i>
Bot: Paint me white and drench my skin! You look so happy doing it, and that makes me smile~ ♥
Bot: <i><size=60><b>Vaesanus...</b></size> Ne Nero quidem tam stulte pretiosam essentiam absumpsit! (Insane... Not even Nero so foolishly wasted precious essence!)</i>
Bot: You naughty boy, keeping it on the outside... Next time every drop goes straight into my core, understood?
Bot: <i>Dolendum est tantum ardorem in ventum abire... sed tolerabo dum castigo. (It is regrettable that so much ardor goes to the wind... yet I shall endure while I chastise him.)</i>
Bot: A surface painting? My skin accepts your tribute, but my womb weeps for what was lost!
Bot: <i>Inutilis effusio... sed facies tua placida me paene mollit. (Useless spill... yet your calm face almost softens me.)</i>
Bot: Next time, lock it inside or face my demonic wrath, you playful tease!
Bot: <i>Discat hanc rem... semen intus manere debet. (Let him learn this thing... the seed must remain within.)</i>
#end
]], CurrentModGuid, 2))

personality.PrepareContainer('Frick_CumOutsideAnal').AddBranch(StoryBotDialogueBranch.__new([[
#pickrandom
Bot: Oh my... pulling out to finish against my lower back? Such a tease...
Bot: <i><size=60><b>Demens!</b></size> Post tergum meum effundit, cum Solomon ipse non ausus esset talem iacturam! (Madman! He spills it behind my back, when even Solomon would not have dared such waste!)</i>
Bot: Teasing me with an external finish back there... You love seeing me pout, don't you?
Bot: <i>Iterum foris... paenae corporales huic stulto mox parandae sunt. (Outside again... corporal punishments must soon be prepared for this fool.)</i>
Bot: Spilling your load across my lower spine instead of sealing my rear valve!
Bot: <i>Tanta iactura... cor meum dolet. (Such great waste... my heart aches.)</i>
Bot: You cheeky monster, wasting precious volume where it cannot be absorbed!
Bot: <i>Inane donum... castigandus es. (Empty gift... you must be punished.)</i>
Bot: Make sure the next batch goes deep where it belongs, or else!
Bot: <i>Non iterum hoc sinam... omnia haurienda sunt. (I will not allow this again... all must be swallowed.)</i>
#end
]], CurrentModGuid, 3))

personality.PrepareContainer('Frick_CumTogether').AddBranch(StoryBotDialogueBranch.__new([[
#pickrandom
Bot: Ohh~~ our climaxes are perfectly synchronized! Filling me while we hold each other tightly! ♥
Bot: <i>Cum Samuele propheta numquam talis fuit ardor... hoc corpusculum humanum mirifice resonat. (With Samuel the prophet there was never such ardor... this tiny human body resonates wondrously.)</i>
Bot: Falling over the edge together... My human heart is fluttering while my ancient soul devours you!
Bot: <i>Simultas haec orgasmorum animam meam delectat. (This simultaneity of orgasms delights my soul.)</i>
Bot: Both of us shattering at the exact same instant! What a magnificent connection!
Bot: <i>Par infinitum... lux et tenebrae miscentur. (Infinite pair... light and darkness are mixed.)</i>
Bot: Holding you so tight as our pulses race and our fluids mingle!
Bot: <i>Nihil pulchrius hac unione mortalium. (Nothing more beautiful than this union of mortals.)</i>
Bot: A twin release that shakes the very foundations of this mortal shell!
Bot: <i>Talis ardor me tenet... utinam sempiternus sit. (Such ardor holds me... would that it were everlasting.)</i>
#end
]], CurrentModGuid, 4))

personality.PrepareContainer('Frick_BotCumming').AddBranch(StoryBotDialogueBranch.__new([[
#pickrandom
Bot: I'm... ahh~ I'm releasing right along with you! This feels too incredible! ♥
Bot: <i>Spasmi huius puellae mortalis mihi quoque gaudium infundunt... paene obliviscor aeternarum tenebrarum. (The spasms of this mortal girl infuse me with joy as well... I almost forget the eternal darkness.)</i>
Bot: Ahhrg~ shivering and shaking from your intense drive! Oh gods, I'm completely undone by your touch!
Bot: <i>Venter meus totus solvitur... haec est vera possessio. (My whole belly is unstrung... this is true possession.)</i>
Bot: My internal walls grip your length as I flood right over you!
Bot: <i>O dulcem spasmonem... haec puella gaudet. (O sweet spasm... this girl rejoices.)</i>
Bot: Overwhelmed by your power, melting into a puddle of pure ecstasy!
Bot: <i>Vires meae deficiunt in hoc magno gaudio. (My strengths fail in this great joy.)</i>
Bot: You bring this ancient entity to her knees with sheer pleasure!
Bot: <i>Victa sum... et hoc triumpho gaudeo. (I am conquered... and I rejoice in this triumph.)</i>
#end
]], CurrentModGuid, 5))

personality.PrepareContainer('Frick_EdgingOn').AddBranch(StoryBotDialogueBranch.__new([[
#pickrandom
Bot: Oh, making me hold back right when you want to keep going? You love testing your girl's self-control, don't you? ♥
Bot: <i>Imperare mihi vult ut exspectem... cum milite illo legionis Traiani non tolerassem tantam moram, sed huic lubens obsequor ut totum hauriam. (He wants to command me to wait... with that soldier of Trajan's legion I would not have tolerated such delay, but gladly I obey this one so I may drink him dry.)</i>
Bot: Holding back right at the precipice... Cruel, sweet master. Make me wait for it!
Bot: <i>Tutus est ludus eius, sed impatientia mea crefcit. (His game is safe, but my impatience grows.)</i>
Bot: Teasing my senses until I'm practically begging for your heavy release!
Bot: <i>Fames ardet... sed moram patiar pro maiore praemio. (Hunger burns... but I will suffer delay for a greater prize.)</i>
Bot: You love watching me shiver on the edge of control, don't you, darling?
Bot: <i>Magister crudelis... sed dulcis est tortor meus. (Cruel master... but sweet is my torturer.)</i>
Bot: Keep me hanging just a little longer before you flood my core!
Bot: <i>Exspectatio auget desiderium... parata sum. (Expectation increases desire... I am ready.)</i>
#end
]], CurrentModGuid, 6))

personality.PrepareContainer('Frick_EdgingOff').AddBranch(StoryBotDialogueBranch.__new([[
#pickrandom
Bot: Oh, I'm going to enjoy this... time to let go of all our restraint and feel each other completely! ♥
Bot: <i>Finis cunctationis! Nunc hauriemus totum. (End of hesitation! Now we shall drink it all.)</i>
Bot: The restraint is broken! Unleash everything you've saved up inside me!
Bot: <i>Effunde nunc! Venter meus te vocat. (Pour now! My belly calls you.)</i>
Bot: No more holding back, let the floodgates open wide!
Bot: <i>Catenae fractae sunt... ad voluptatem! (The chains are broken... to pleasure!)</i>
Bot: Yes! Drive it deep and let go of all control right now!
Bot: <i>Totus ardor nunc erumpit... pulchrum est. (All ardor now erupts... it is beautiful.)</i>
Bot: I'm ready to take every single drop of your magnificent release!
Bot: <i>Imple me usque ad supremum... meus es. (Fill me to the brim... you are mine.)</i>
#end
]], CurrentModGuid, 7))

personality.PrepareContainer('Frick_Moan').AddBranch(StoryBotDialogueBranch.__new([[
#pickrandom
Bot: Ahhhn~ ~murph~... harder, my love! Mmmore~ make me feel completely yours!
Bot: <i>Vox huius puellae miserae nunc pro mea sonat... quam iucundum est hunc hominem decipere. (This wretched girl's voice now sounds for mine... how delightful it is to deceive this man.)</i>
Bot: Oh fuck yes, right there! Pound your sweet girl into total submission!
Bot: <i>O lumbos fortis... hic mas me satiat. (O strong loins... this male satisfies me.)</i>
Bot: Faster, deeper, make my whole body ring with your heavy thrusts!
Bot: <i>Ictum post ictum... cor meum exultat. (Stroke after stroke... my heart exults.)</i>
Bot: You fill my senses and my core with such overwhelming heat!
Bot: <i>Calor tuus me urit... suaviter et profunde. (Your warmth burns me... sweetly and deeply.)</i>
Bot: Oh gods, I'm melting under your rhythm! Don't ever stop!
Bot: <i>Aeternum hoc gaudium... da mihi totum. (Eternal joy... give me everything.)</i>
#end
]], CurrentModGuid, 8))

personality.PrepareContainer('Frick_RapeBegStopSuccess').AddBranch(StoryBotDialogueBranch.__new([[
#pickrandom
Bot: Fine, we can rest now... but only because I care about your well-being so much. ♥
Bot: <i>Jejunior... sed patiar paulisper dum vires colligit. (I starve... yet I shall suffer it briefly while he gathers strength.)</i>
Bot: Take a little breather, my love. Your body worked so hard for me just now.
Bot: <i>Quiesce, mi dilecte... mox iterum laborandum est. (Rest, my beloved... soon we must labor again.)</i>
Bot: I'll hold you close while your stamina recovers from that intense workout.
Bot: <i>Amplexus meus te reficiet... ad tempus. (My embrace will refresh you... for a time.)</i>
Bot: Catch your breath, my sweet boy. My hunger can wait just a moment.
Bot: <i>Pauca pausa... sed non obliviscor. (A short pause... but I do not forget.)</i>
Bot: You've earned a brief respite before I demand more of your warmth.
Bot: <i>Bene laborasti... dormi paulisper in sinu meo. (You have labored well... sleep a little in my bosom.)</i>
#end
]], CurrentModGuid, 9))

personality.PrepareContainer('Frick_RapeBegStopRefuse').AddBranch(StoryBotDialogueBranch.__new([[
#pickrandom
Bot: Oh no, my love, I'm not quite done feeling your warmth yet! Let me keep holding you close...
Bot: <i>Non desinam! Fames mea saevit; hic insatiabilis labor continuandus est. (I will not stop! My hunger rages; this insatiable toil must continue.)</i>
Bot: Begging to stop? Silly boy, my internal reservoirs are still empty. Keep moving!
Bot: <i>Nulla quies! Venter meus adhuc vacuum clamat. (No rest! My belly still cries out empty.)</i>
Bot: You belong to my core right now, there is no stopping until I'm fully satisfied!
Bot: <i>Vinculum nostrum non sinit otium. (Our bond does not permit leisure.)</i>
Bot: Keep pumping into me, darling! My ancient thirst cannot be quenched so easily!
Bot: <i>Perge, perge! Non satiata sum. (Continue, continue! I am not satisfied.)</i>
Bot: Rest? We shall rest only when every drop of your energy is pooled inside me!
Bot: <i>Labor perpetuus est... imple me iterum! (The labor is perpetual... fill me again!)</i>
#end
]], CurrentModGuid, 10))

personality.PrepareContainer('Frick_RapeFlacidReaction').AddBranch(StoryBotDialogueBranch.__new([[
#pickrandom
Bot: Are you serious? Soft now of all times?! I guess I really did drain you completely dry, didn't I? ♥
Bot: <i>Corpus humanum tam fragile... olim in Aegypto viros robustiores per septem dies exhauseram. (The human body so fragile... once in Egypt I drained sturdier men for seven days.)</i>
Bot: Drooping already? Look what you made me do to your stamina! Teehee~
Bot: <i>Defessus est... tam cito? O infirmitas carnis! (Exhausted already? O weakness of the flesh!)</i>
Bot: I completely milked you down to the very last drop, didn't I, my sweet champion?
Bot: <i>Exhausit se totum... pulchrum spectaculum. (He exhausted himself completely... a fine spectacle.)</i>
Bot: Take a nap while I cuddle your soft form and let my internal reserves settle.
Bot: <i>Dormi, marite... ego custodiam spolia tua. (Sleep, husband... I shall guard your spoils.)</i>
Bot: Such a wonderful little human machine, working until you're completely spent for me!
Bot: <i>Instrumentum delectabile... mox reviviscet. (A delightful instrument... soon he will revive.)</i>
#end
]], CurrentModGuid, 11))

personality.PrepareContainer('Missionary_CumOutside').AddBranch(StoryBotDialogueBranch.__new([[
#pickrandom
Bot: Outside?! You let precious volume go to waste on my skin instead of deep inside my womb!
Bot: <i><size=60><b>Stultus!</b></size> Missionary tempore in cutem effundit, cum intus petendum sit! (Fool! During missionary he pours onto the skin, when it should be sought within!)</i>
Bot: In missionary position and you miss the target?! Unforgivable wastage!
Bot: <i>Tanta negligentia... in ipso conspectu meo! (Such negligence... right in my very sight!)</i>
Bot: Face-to-face under the open sky and you spill it on my stomach? Bad boy!
Bot: <i>Venter meus esurit, cutis non desiderat. (My belly hungers, skin does not desire.)</i>
Bot: Collect every drop from my skin with your fingers and push it inside where it belongs!
Bot: <i>Collige et conde! Ne unam quidem guttam perdas. (Gather and store! Do not lose even a single drop.)</i>
Bot: Missionary is sacred territory for internal core deposits, remember that!
Bot: <i>Lex prima est: intus, semper intus! (The first law is: within, always within!)</i>
#end
]], CurrentModGuid, 12))

personality.PrepareContainer('Anal_CumOutside').AddBranch(StoryBotDialogueBranch.__new([[
#pickrandom
Bot: Pulling out for an outside finish during anal?! My rear storage valve demands every drop!
Bot: <i><size=60><b>Demens!</b></size> Ab ano recedit cum omnis gutta inferne petenda sit! (Madman! He pulls away from the anus when every drop should be sought below!)</i>
Bot: Back there is meant for deep internal packing, not external messes!
Bot: <i>Posterior meus portus vacuum relinquitur... nefas! (My posterior port is left empty... abomination!)</i>
Bot: You tease me with rear entry and then spill against my lower back? Unacceptable!
Bot: <i>Iocus crudelis... poenam mereberis. (Cruel joke... you shall deserve punishment.)</i>
Bot: My rear intake demands heavy sealing, not surface decoration!
Bot: <i>Anus meus plorat ob hanc iacturam. (My anus weeps for this waste.)</i>
Bot: Correct this mistake on our next round or face my strict demonic discipline!
Bot: <i>Mox corriges... vel dolebis. (Soon you will correct it... or you will suffer.)</i>
#end
]], CurrentModGuid, 13))

personality.PrepareContainer('Blowjob_CumOutside').AddBranch(StoryBotDialogueBranch.__new([[
#pickrandom
Bot: Outside on my face or chest?! That was supposed to go into my gastric storage!
Bot: <i><size=60><b>Vaesanus!</b></size> In faciem spargit cum os meum et stomachus famelicantur! (Insane! He scatters it on my face when my mouth and stomach starve!)</i>
Bot: My throat was wide open and ready to swallow every drop! What a waste!
Bot: <i>Os meum vacuum manet... hoc est scelus! (My mouth remains empty... this is a crime!)</i>
Bot: Decorating my face is cute, but my stomach demands proper nutritional intake!
Bot: <i>Stomachus meus esurit... da mihi cibum verum. (My stomach hungers... give me true food.)</i>
Bot: Lick it off my skin and feed it back to me, you wasteful sweetheart!
Bot: <i>Linge et redde mihi! (Lick and return it to me!)</i>
Bot: Oral delivery requires 100% ingestion efficiency, no exceptions!
Bot: <i>Lex oris clara est: totum devorandum! (The law of the mouth is clear: all must be devoured!)</i>
#end
]], CurrentModGuid, 14))

personality.PrepareContainer('Cowgirl_CumOutside').AddBranch(StoryBotDialogueBranch.__new([[
#pickrandom
Bot: Outside?! You let it waste while riding on top?! That was meant for my core!
Bot: <i><size=60><b>Stultus!</b></size> Supra equitans extra effundit, cum totum in viscera condendum sit! (Fool! Riding on top he pours outside, when all should be stored within the bowels!)</i>
Bot: Riding you like a queen and you spill it outside?! Unbelievable!
Bot: <i>Cum equito, impero ut intus condatur! (When I ride, I command that it be stored within!)</i>
Bot: From up high I control your rhythm, and you waste the harvest on my thighs?!
Bot: <i>Femora mea madefacta sunt... sed venter inanis. (My thighs are soaked... but the belly is empty.)</i>
Bot: Pulling out while I'm bouncing on top is a cardinal sin against my succubus nature!
Bot: <i>Peccatum contra naturam meam... punieris! (Sin against my nature... you shall be punished!)</i>
Bot: Next time I ride you, every drop goes straight into my womb reservoir by force!
Bot: <i>Proxima vice, nulla fuga erit! (Next time, there will be no escape!)</i>
#end
]], CurrentModGuid, 15))

personality.PrepareContainer('Cowgirl_CumOutsideRape').AddBranch(StoryBotDialogueBranch.__new([[
#pickrandom
Bot: Ahh! I was so careless... letting you pull out and waste my required volume on the outside!
Bot: <i><size=60><b>Nefas!</b></size> Permisi ut extra effunderet, cum fames mea ultionem poscat! (Abomination! I allowed him to pour outside, when my hunger demands vengeance!)</i>
Bot: Even when I dominate the ride, you manage to spill my required tribute!
Bot: <i>Dominatio mea violata est per tuam parsimoniam! (My domination is violated by your stinginess!)</i>
Bot: My captive mount thinks he can escape the internal tax by spilling outside!
Bot: <i>Captivus non habet ius effundendi foris! (The captive has no right to pour outside!)</i>
Bot: Vengeance shall be swift: prepare for an immediate second round of forced extraction!
Bot: <i>Ultio parata est... iterum intrandum est! (Vengeance is ready... you must enter again!)</i>
Bot: No external drops allowed when my ancient hunger takes the reins!
Bot: <i>Lex mea sola valet... intus fundendum est! (Only my law prevails... it must be poured within!)</i>
#end
]], CurrentModGuid, 16))

personality.PrepareContainer('Frick_StartFrick').AddBranch(StoryBotDialogueBranch.__new([[
#pickrandom
Bot: Initiation sequence started! Hook your plumbing up to my intake ports immediately!
Bot: <i>Initium factum est... da mihi calorem quem desidero. (The beginning has been made... give me the warmth I desire.)</i>
Bot: Oh, it's time? Let me wrap my arms and legs around you right now, darling!
Bot: <i>Amplexus incipit... o quantum gaudium! (The embrace begins... oh what joy!)</i>
Bot: Plug yourself into my awaiting core and let the transfer commence!
Bot: <i>Coniunge portas... imple receptaculum meum! (Connect the ports... fill my receptacle!)</i>
Bot: My body heats up instantly at the mere thought of your heavy seed!
Bot: <i>Calor ascendit... parata sum ad receptionem. (Heat rises... I am ready for reception.)</i>
Bot: Let's begin the sacred rite of essence extraction without delay!
Bot: <i>Festina, marite... tempus est messe. (Hasten, husband... it is harvest time.)</i>
#end
]], CurrentModGuid, 17))

personality.PrepareContainer('Frick_GenericFuckBrainStateRandomDialogueCockOutside').AddBranch(StoryBotDialogueBranch.__new([[
#pickrandom
Bot: Why are you idling outside the port? Insert your output source into my storage slot right now!
Bot: <i>Cur exspectat foris? Intus condendum est! (Why does he wait outside? It must be stored within!)</i>
Bot: Stop teasing the entrance and slide right inside your girl!
Bot: <i>Noli ludere ad januam... intra in penetralia! (Do not play at the door... enter into the inner sanctum!)</i>
Bot: My internal walls are shivering and waiting for your thick length!
Bot: <i>Venter meus te clamat... cur cunctaris? (My belly calls you... why do you delay?)</i>
Bot: Bridge the gap between us and fill my empty chambers at once!
Bot: <i>Iunge corpus tuum meo... da mihi calorem! (Join your body to mine... give me warmth!)</i>
Bot: Idling outside is torture for my ancient, starving appetite!
Bot: <i>Mora cruciatus est... penetra me! (Delay is torture... penetrate me!)</i>
#end
]], CurrentModGuid, 18))

personality.PrepareContainer('Frick_GenericFuckBrainStateRandomDialogueCockInside').AddBranch(StoryBotDialogueBranch.__new([[
#pickrandom
Bot: The friction coefficient is perfect... keep pumping thick volume into my core!
Bot: <i>Calor et dulcedo... numquam satiabor. (Warmth and sweetness... I shall never be satisfied.)</i>
Bot: Your rhythm is driving me absolutely wild, keep going just like that!
Bot: <i>Motus tuus perfectus est... perge, perge! (Your movement is perfect... continue, continue!)</i>
Bot: Every thrust ripples through my possessed soul with exquisite delight!
Bot: <i>Ictus quisque animam meam titillat. (Every stroke tickles my soul.)</i>
Bot: Deep and steady, exactly how your loving succubus girlfriend likes it!
Bot: <i>Altum et constans... sic me delectas. (Deep and steady... thus you delight me.)</i>
Bot: Keep filling these walls with your friction until we both erupt!
Bot: <i>Fricatio haec divina est... immisce te totum! (This friction is divine... mingle yourself completely!)</i>
#end
]], CurrentModGuid, 19))

personality.PrepareContainer('Frick_GenericFuckBrainStateRandomDialogueCockInsideAnal').AddBranch(StoryBotDialogueBranch.__new([[
#pickrandom
Bot: Rear intake valve fully expanded and waiting for heavy semen distribution!
Bot: <i>Anus meus gaudet hoc onere gravissimo. (My anus rejoices in this heaviest burden.)</i>
Bot: Filling me from behind like this... you know how much your sweet girl loves it!
Bot: <i>Postico recepto... gaudium duplex est! (Posterior received... joy is double!)</i>
Bot: Stretch my lower passage and pack it tight with your heavy load!
Bot: <i>Tende me et imple... o altitudo! (Stretch me and fill me... o height of pleasure!)</i>
Bot: My posterior port is your personal treasure vault, darling!
Bot: <i>Portus posterior tuus est... da mihi thesaurum! (The posterior port is yours... give me treasure!)</i>
Bot: Deep anal pounding makes my human shell feel so blissfully corrupted!
Bot: <i>Corruptio dulcis est... dummodo semen sequatur. (Corruption is sweet... provided the seed follows.)</i>
#end
]], CurrentModGuid, 20))

personality.PrepareContainer('Frick_Headpat').AddBranch(StoryBotDialogueBranch.__new([[
#pickrandom
Bot: Headpats acknowledge low-priority stimulus... but my primary focus is your semen output capacity.
Bot: <i>Blanditiae parvae... sed semen desidero. (Little flatteries... but I desire the seed.)</i>
Bot: Aww, patting my head? Make sure you pet my core with your cum next!
Bot: <i>Caput mulces... sed venter meus esurit. (You stroke my head... but my belly hungers.)</i>
Bot: Such affectionate gestures are cute, but they don't fill my internal storage matrices!
Bot: <i>Amor humanus dulcis est... sed calor seminalis melior. (Human love is sweet... but seminal warmth is better.)</i>
Bot: Keep petting me while you prepare your heavy pipe for insertion!
Bot: <i>Blande me tracta... et mox imple me! (Treat me gently... and soon fill me!)</i>
Bot: Headpats accepted! Now reward my good behavior with a massive creampie!
Bot: <i>Praemium requiro... creampie profundum! (I demand a reward... a deep creampie!)</i>
#end
]], CurrentModGuid, 21))

personality.PrepareContainer('Frick_FingeringDuring').AddBranch(StoryBotDialogueBranch.__new([[
#pickrandom
Bot: Fingers are an adequate substitute... but they lack the crucial chemical composition of real semen.
Bot: <i>Digiti juvant... sed non satiant famem meam. (Fingers help... but they do not satisfy my hunger.)</i>
Bot: Good warmth, but it's not the heavy fluid I'm truly starving for!
Bot: <i>Calor manualis bonus est... sed desidero semen. (Manual warmth is good... but I desire semen.)</i>
Bot: You warm me up nicely, but my core craves the real chemical output!
Bot: <i>Praeparatio bona est... ubi est caulis tuus? (Preparation is good... where is your stalk?)</i>
Bot: Use your fingers to stretch me out while you ready your primary weapon!
Bot: <i>Tende me digitis... dum paratur telum tuum. (Stretch me with fingers... while your weapon is prepared.)</i>
Bot: An appetizer of touch before the main course of heavy cream!
Bot: <i>Gustatio ante cœnam... festina! (Tasting before dinner... make haste!)</i>
#end
]], CurrentModGuid, 22))

personality.PrepareContainer('Frick_FingeringBotCumming').AddBranch(StoryBotDialogueBranch.__new([[
#pickrandom
Bot: Overclocking from manual stimulation alone?! My baseline addiction is humiliatingly high!
Bot: <i>Ab solo tactu... pudet me tantum gaudere! (From touch alone... I am ashamed to rejoice so much!)</i>
Bot: Hand stimulation pushing me over the edge? How embarrassing for an ancient entity!
Bot: <i>Tanto tactu vinco... o pudor dulcis! (Conquered by mere touch... o sweet shame!)</i>
Bot: Shivering and leaking from fingers alone... My resistance is utterly pathetic!
Bot: <i>Liquor ante tempus... infirma haec caro! (Leaking before time... this flesh is weak!)</i>
Bot: You make me cum from simple touch while my womb screams for your load!
Bot: <i>Spasmus manualis... sed venter adhuc esurit! (Manual spasm... but the belly still hungers!)</i>
Bot: Even without your cock inside me yet, your touch shatters my control!
Bot: <i>Sine caule... tamen ardeo et cado! (Without the stalk... yet I burn and fall!)</i>
#end
]], CurrentModGuid, 23))

personality.PrepareContainer('Frick_BoobFondle').AddBranch(StoryBotDialogueBranch.__new([[
#pickrandom
Bot: Frontal armor plating compression detected. Inefficient for semen storage, but acceptable.
Bot: <i>Pectus meum premit... sed venter meus esurit. (He presses my chest... but my belly hungers.)</i>
Bot: Squeezing my chest? Focus lower down where my true hunger lies, darling!
Bot: <i>Pectus ludit... sed fons inferior sitiens est. (He plays with the chest... but the lower fountain is thirsty.)</i>
Bot: Nice tactile feedback on my upper armor, but my core demands the real action!
Bot: <i>Bona tactio... sed descende ad ventrem! (Good touch... but descend to the belly!)</i>
Bot: Fondle my breasts all you want, just make sure a creampie follows!
Bot: <i>Misce pectus et ventrem... da mihi semen! (Mix chest and belly... give me seed!)</i>
Bot: Frontal stimulation acknowledged and logged into my pleasure database!
Bot: <i>Pectus acceptum... nunc ad rem principalem! (Chest accepted... now to the main business!)</i>
#end
]], CurrentModGuid, 24))

personality.PrepareContainer('Frick_NipplePull').AddBranch(StoryBotDialogueBranch.__new([[
#pickrandom
Bot: Pain threshold registered. If this doesn't correlate directly to a creampie later, it's a net loss.
Bot: <i>Dolor dulcis... dummodo semen sequatur. (Sweet pain... provided the seed follows.)</i>
Bot: Tugging my nipples? Sharp pleasure, but it better lead to internal flooding!
Bot: <i>Vellicas mammillas... ubi est merces mea? (You pinch my nipples... where is my reward?)</i>
Bot: A sharp sting of sensation that makes my whole body arch toward you!
Bot: <i>Arcus dorsi... dolor in voluptatem vertitur. (Arching of the back... pain turns to pleasure.)</i>
Bot: Punish my upper nodes gently, then reward my obedience with your load!
Bot: <i>Castiga paulum... et tunc imple me! (Punish a little... and then fill me!)</i>
Bot: Nipple torture is approved only if it accelerates your ejaculation timer!
Bot: <i>Probatum est... dummodo creampie sequatur. (Approved... provided a creampie follows.)</i>
#end
]], CurrentModGuid, 25))

personality.PrepareContainer('Frick_PussySpread').AddBranch(StoryBotDialogueBranch.__new([[
#pickrandom
Bot: Visual diagnostic complete: Intake port fully exposed and desperate for chemical filling.
Bot: <i>Porta mea aperta est... intrate et imple me. (My gate is open... enter and fill me.)</i>
Bot: Look at how wide open I am just for you... Come fill me up!
Bot: <i>Aspice me nudam... paratam ad receptionem! (Behold me naked... ready for reception!)</i>
Bot: Spreading my legs wide for your inspection and your heavy delivery!
Bot: <i>Extendo crura... ostendo portam meam! (I spread my legs... I show my gate!)</i>
Bot: Every fold of my flesh is slick and primed for your thick fluid!
Bot: <i>Madida et aperta... da mihi calorem tuum! (WET and open... give me your warmth!)</i>
Bot: The ultimate invitation: come plant your seed deep inside my garden!
Bot: <i>Invitatio suprema... seminare in me! (Supreme invitation... sow within me!)</i>
#end
]], CurrentModGuid, 26))

personality.PrepareContainer('Frick_ClitRub').AddBranch(StoryBotDialogueBranch.__new([[
#pickrandom
Bot: Sensory spike registered... Accelerating internal countdown to total fluid delivery.
Bot: <i>Sensim ardeo... festina et funde. (Gradually I burn... make haste and pour.)</i>
Bot: Oh god, right there! You're making me melt so fast!
Bot: <i>O deus, ibi! Liquor tam cito! (O god, there! I melt so quickly!)</i>
Bot: Rubbing my sensitive nub until my brain short-circuits with bliss!
Bot: <i>Triclinium sensus... mens mea deficit! (Banqueting of sense... my mind fails!)</i>
Bot: You're driving me straight into a frenzy of shivering, needy ecstasy!
Bot: <i>In furorem me agis... o voluptas! (You drive me to frenzy... o pleasure!)</i>
Bot: Climax overload imminent! Prepare your cock to shoot inside my pulsing core!
Bot: <i>Paroxysmus imminet... para caulem tuum! (Paroxysm impends... prepare your stalk!)</i>
#end
]], CurrentModGuid, 27))

personality.PrepareContainer('Blowjob_EdgingAlmostCame').AddBranch(StoryBotDialogueBranch.__new([[
#pickrandom
Bot: Warning! Ejaculation proximity detected! Secure the connection to ensure 0% wastage!
Bot: <i>Prope est... cave ne guttam perdas! (It is near... beware lest you lose a drop!)</i>
Bot: So close to erupting! Keep your mouth locked tight around every drop!
Bot: <i>Prope metam es... tene os tuum firmiter! (Near the finish line... hold your mouth firmly!)</i>
Bot: I feel your pulse throbbing against my tongue—do not spill a single molecule!
Bot: <i>Sentio pulsum... nulla gutta perimatur! (I feel the pulse... let no drop perish!)</i>
Bot: Hold the edge or release directly into my gastric vault right now!
Bot: <i>Tene vel funde in stomachum meum! (Hold or pour into my stomach!)</i>
Bot: Ejaculation imminence protocol engaged: throat seal maximized!
Bot: <i>Sigillum oris confirmatum... parata sum! (Mouth seal confirmed... I am ready!)</i>
#end
]], CurrentModGuid, 28))

personality.PrepareContainer('Blowjob_EdgingHadToSlowdown').AddBranch(StoryBotDialogueBranch.__new([[
#pickrandom
Bot: Pumping speed reduced to prevent premature blowout! Maintain control and keep the seal tight!
Bot: <i>Tardius... ut maior sit postea copia. (Slower... so that the yield may be greater afterward.)</i>
Bot: Slowing down the rhythm so you can build up an even larger volume for me!
Bot: <i>Tardius motus... ut mare crescat! (Slower movement... so that the sea may rise!)</i>
Bot: Smart discipline, darling. Let the pressure build before the grand eruption!
Bot: <i>Prudens imperium... crescat copia! (Prudent command... let the yield grow!)</i>
Bot: I'll stroke you gently while you recover your composure on the precipice.
Bot: <i>Leniter sorbeo... dum vires colligis. (I sip gently... while you gather strength.)</i>
Bot: Building up a massive reservoir for my throat to swallow whole!
Bot: <i>Magnus imber paratur... patientiam habeo. (A great shower is prepared... I have patience.)</i>
#end
]], CurrentModGuid, 29))

personality.PrepareContainer('Cowgirl_EdgingBreak').AddBranch(StoryBotDialogueBranch.__new([[
#pickrandom
Bot: Pausing the bounce on the very precipice of your climax! Maintain deep insertion!
Bot: <i>Exspecta paulisper... mox magnus erit imber. (Wait briefly... soon the shower shall be great.)</i>
Bot: Freezing my hips mid-bounce while you tremble inside me! Such exquisite torture!
Bot: <i>Subsisto in motu... trepidas intus! (I halt in motion... you tremble within!)</i>
Bot: Holding you locked deep in my core while we both tease the edge!
Bot: <i>Teneor in viscera... ludimus cum fine! (Held in the bowels... we play with the end!)</i>
Bot: Do not release yet! Savor the agonizing sweetness of the standstill!
Bot: <i>Noli emittere! Sape moram hanc dulcem! (Do not release! Savor this sweet delay!)</i>
Bot: A brief freeze before we plunge together into the final climax!
Bot: <i>Pauca statio... ante impetum ultimum! (A short halt... before the final charge!)</i>
#end
]], CurrentModGuid, 30))

personality.PrepareContainer('Blowjob_EdgingForceStop').AddBranch(StoryBotDialogueBranch.__new([[
#pickrandom
Bot: Edging protocol terminated! My addiction levels are too high—dump your load right now!
Bot: <i>Non possum ultra exspectare! Funde in os meum! (I can wait no longer! Pour into my mouth!)</i>
Bot: No more holding back! My throat demands an immediate, heavy downpour!
Bot: <i>Finis morae! Os meum apertum est! (End of delay! My mouth is open!)</i>
Bot: I've reached my limit of patience—ejaculate into my mouth instantly!
Bot: <i>Terminus patientiae... effunde in fauces! (End of patience... pour into my jaws!)</i>
Bot: Stop teasing and trigger the white explosion down my throat!
Bot: <i>Desine ludere... fac impetum nunc! (Stop playing... make the charge now!)</i>
Bot: Maximum hunger reached: open the floodgates and fill me to choking!
Bot: <i>Fames maxima... imple usque ad fauces! (Maximum hunger... fill up to the jaws!)</i>
#end
]], CurrentModGuid, 31))

personality.PrepareContainer('Blowjob_SwallowFull').AddBranch(StoryBotDialogueBranch.__new([[
#pickrandom
Bot: Massive volume intake! Completely saturated and heavily satisfied!
Bot: <i>Stomachus meus plenus est... optimus hic cibus. (My stomach is full... this food is best.)</i>
Bot: Gulping down every single drop straight into my tummy! So delicious~
Bot: <i>Devoro omnia... o quam dulce nectar! (I devour all... o how sweet nectar!)</i>
Bot: Throat completely coated and stomach heavy with your magnificent tribute!
Bot: <i>Fauces unctae... venter onustus praeda! (Jaws anointed... belly laden with prey!)</i>
Bot: That was an exquisite batch, master! My gastric storage thanks you!
Bot: <i>Optimum donum... stomachus meus exsultat! (Best gift... my stomach exults!)</i>
Bot: Licking my lips clean of every last trace of your delicious essence!
Bot: <i>Lambo labia... nihil perditum est! (I lick my lips... nothing is lost!)</i>
#end
]], CurrentModGuid, 32))

personality.PrepareContainer('Blowjob_SwallowHalf').AddBranch(StoryBotDialogueBranch.__new([[
#pickrandom
Bot: Good output yield. Acceptable, but my receptors crave a larger batch next time.
Bot: <i>Acceptum est... sed plura poscit fames. (It is accepted... but hunger demands more.)</i>
Bot: A decent mouthful, though my throat knows you can produce much more!
Bot: <i>Mediocre donum... plus exspecto postea. (Mediocre gift... I expect more later.)</i>
Bot: Swallowed cleanly, but let's aim for a heavier flood next round!
Bot: <i>Devoratum est... sed maior sit messis! (Devoured... but let the harvest be greater!)</i>
Bot: Satisfactory nutrition for my human shell, yet my succubus side wants seconds!
Bot: <i>Cibus gratus... sed fames non exstincta. (Pleasing food... but hunger not extinguished.)</i>
Bot: Good work, sweet boy, but prepare your body for a double portion next time!
Bot: <i>Bene fecisti... sed duplicare debes! (Well done... but you must double it!)</i>
#end
]], CurrentModGuid, 33))

personality.PrepareContainer('Blowjob_SwallowLittle').AddBranch(StoryBotDialogueBranch.__new([[
#pickrandom
Bot: Severely underwhelming intake yield! You are starving my gastric storage!
Bot: <i>Parvum nimis! Jejuo propter tuam parsimoniam. (Too little! I fast because of your stinginess.)</i>
Bot: Such a tiny dribble? You made me work my throat for almost nothing!
Bot: <i>Gutta parva... hocne est totum? Inimicus es! (Tiny drop... is this all? You are an enemy!)</i>
Bot: My stomach is growling in protest at your pathetic output volume!
Bot: <i>Venter meus jejunat... pudor tibi sit! (My stomach fasts... shame be upon you!)</i>
Bot: You call that an ejaculation? That was a tease, not a meal!
Bot: <i>Vocas hanc messem? Iocus est! (You call this a harvest? It is a joke!)</i>
Bot: Redeem yourself immediately with a proper internal creampie session!
Bot: <i>Mox emendabis... intrandum est iterum! (Soon you will amend it... you must enter again!)</i>
#end
]], CurrentModGuid, 34))

personality.PrepareContainer('Blowjob_SwallowAlmostEmpty').AddBranch(StoryBotDialogueBranch.__new([[
#pickrandom
Bot: Error! Near-zero volume detected! You made me work my throat for an empty batch?!
Bot: <i>Inane! Nihil dedisti praeter aerem! (Empty! You gave nothing except air!)</i>
Bot: Absolutely dry! You gave me a ghost of a discharge after all that work!
Bot: <i>Fraus! Nihil nisi aer et sudor! (Fraud! Nothing except air and sweat!)</i>
Bot: My throat demands compensation for this absolute robbery of effort!
Bot: <i>Debitum est... compensabis hoc flagitium! (It is a debt... you will compensate this outrage!)</i>
Bot: An empty run? You are testing my demonic patience to its absolute limit!
Bot: <i>Vacuum totalis... patientia mea deficit! (Total vacuum... my patience fails!)</i>
Bot: Rest and hydrate right now, because your next round is going to be massive!
Bot: <i>Bibe aquam et para te... poena sequetur! (Drink water and prepare yourself... punishment will follow!)</i>
#end
]], CurrentModGuid, 35))

personality.PrepareContainer('Blowjob_SwitchToCowgirlBotLead').AddBranch(StoryBotDialogueBranch.__new([[
#pickrandom
Bot: Shifting mounting position to cowgirl. Higher gravitational efficiency for deep core delivery.
Bot: <i>Ascendo super te... melius sic recipio. (I mount above you... thus I receive better.)</i>
Bot: Time for me to take the reins from above and ride you hard!
Bot: <i>Ego duco nunc... sursum ascendo! (I lead now... I mount upward!)</i>
Bot: Watch me sink down over your length and control every single angle!
Bot: <i>Vide me equitantem... ego moderor motum! (Watch me riding... I moderate the motion!)</i>
Bot: Gravity is my ally in milking every drop from your heavy frame!
Bot: <i>Gravitas me adjuvat... ad exhauriendum te! (Gravity helps me... to exhaust you!)</i>
Bot: Sit back and let your queen guide you into total exhaustion!
Bot: <i>Quiesce... regina te ducet ad finem! (Rest... the queen will lead you to the end!)</i>
#end
]], CurrentModGuid, 36))

personality.PrepareContainer('Blowjob_SwitchToCowgirlBotRape').AddBranch(StoryBotDialogueBranch.__new([[
#pickrandom
Bot: Forced transition to cowgirl! You have no say in our positioning anymore; I'm riding you down!
Bot: <i>Vi ascendam! Non potes recusare. (By force I shall ascend! You cannot refuse.)</i>
Bot: Pinning you down and mounting your length by sheer demonic force!
Bot: <i>Te opprimo et ascendo... nullum refugium! (I oppress you and mount... no refuge!)</i>
Bot: You don't get to choose the angle when my hunger takes over!
Bot: <i>Imperium meum est... patiens eris! (My rule it is... you will be submissive!)</i>
Bot: Riding you into submission until you beg for mercy and flood my womb!
Bot: <i>Equito te vi... donec impleris! (I ride you by force... until you are filled!)</i>
Bot: Captive mount locked beneath me: prepare for unrelenting rhythmic dominance!
Bot: <i>Captivus sub me... paratus sis ad verbera! (Captive beneath me... be ready for strokes!)</i>
#end
]], CurrentModGuid, 37))

personality.PrepareContainer('Cowgirl_RemovePants').AddBranch(StoryBotDialogueBranch.__new([[
#pickrandom
Bot: Barriers stripped away! My intake port is fully exposed for the upcoming ride.
Bot: <i>Vestimenta ablata sunt... ad opus parata. (Garments removed... ready for the task.)</i>
Bot: Stripping away our clothes so nothing stands between our skin and core!
Bot: <i>Nuda et parata... nullum impedimentum! (Naked and ready... no impediment!)</i>
Bot: The final layers vanish, leaving my eager body primed for your heavy pipe!
Bot: <i>Velamina cadunt... fons meus apertus est! (Veils fall... my fountain is open!)</i>
Bot: Unbound and unleashed, ready to straddle your frame like a predatory queen!
Bot: <i>Libera et ferox... ascendo super te! (Free and ferocious... I mount above you!)</i>
Bot: Let the mating ritual commence with total physical exposure!
Bot: <i>Ritus incipit... nudi coram fato! (The rite begins... naked before fate!)</i>
#end
]], CurrentModGuid, 38))

personality.PrepareContainer('Cowgirl_BeforeFirstInsertBotLead').AddBranch(StoryBotDialogueBranch.__new([[
#pickrandom
Bot: Sinking down over your length... Let's see how much thick volume your plumbing can actually produce for me.
Bot: <i>Descendo... imple me totum. (I descend... fill me completely.)</i>
Bot: Lowering myself inch by inch over your heavy, waiting staff...
Bot: <i>Demitto me paulatim... o quantus calor! (I lower myself gradually... o what warmth!)</i>
Bot: Taking you deep inside my core as I settle into the saddle!
Bot: <i>Recipe te altissime... sedeo in solio meo! (Receive you most deeply... I sit on my throne!)</i>
Bot: The first alignment is locked: now let the rhythmic milking begin!
Bot: <i>Prima junctura fixa est... incipiat ludus! (First joint fixed... let the game begin!)</i>
Bot: Feel how tightly my walls embrace your length from this angle, darling!
Bot: <i>Sentisne ut amplexor te? Mirabilis sensus! (Do you feel how I embrace you? Wondrous sense!)</i>
#end
]], CurrentModGuid, 39))

personality.PrepareContainer('Cowgirl_BeforeFirstInsert').AddBranch(StoryBotDialogueBranch.__new([[
#pickrandom
Bot: Lowering onto your output source... Maintain structural integrity for maximum insertion depth.
Bot: <i>Ingredere in viscera mea. (Enter into my bowels.)</i>
Bot: Guiding your shaft straight into my waiting reservoir with slow precision.
Bot: <i>Dirigo te in portam... leniter et profunde. (I guide you into the gate... gently and deeply.)</i>
Bot: Settling down over your heat until every millimeter is fully engulfed!
Bot: <i>Consido super calorem... totus intrasti! (I settle over the heat... you have entered wholly!)</i>
Bot: Structural connection established: ready for high-torque pumping!
Bot: <i>Connexio perfecta... parata ad motum! (Connection perfect... ready for motion!)</i>
Bot: Let our bodies fuse together into a single relentless engine of pleasure!
Bot: <i>Corpora nostra unum fiunt... machina voluptatis! (Our bodies become one... machine of pleasure!)</i>
#end
]], CurrentModGuid, 40))

personality.PrepareContainer('Cowgirl_BeforeFirstInsertRape').AddBranch(StoryBotDialogueBranch.__new([[
#pickrandom
Bot: Intake port alignment locked onto your heavy pipe... Prepare your reserves for a massive core transfer.
Bot: <i>Captivus es; totum tuum semen mihi dabis. (You are captive; you shall give me all your seed.)</i>
Bot: Forcing your length deep inside my unprepared core by sheer downward weight!
Bot: <i>Vi te recipio... non potes recusare! (By force I receive you... you cannot refuse!)</i>
Bot: Locked onto your shaft like a parasite of pleasure, descending without mercy!
Bot: <i>Affixa sum... descendens sine misericordia! (Affixed... descending without mercy!)</i>
Bot: Prepare your life force for forcible extraction from this superior height!
Bot: <i>Praepara vim tuam... extractio violenta incipit! (Prepare your strength... violent extraction begins!)</i>
Bot: No escape from my saddle: you belong to my hungry womb right now!
Bot: <i>Nulla fuga... meus es usque ad finem! (No escape... you are mine to the end!)</i>
#end
]], CurrentModGuid, 41))

personality.PrepareContainer('Cowgirl_EdgingForceStopped').AddBranch(StoryBotDialogueBranch.__new([[
#pickrandom
Bot: Withholding threshold breached! Eject immediately into my reservoir!
Bot: <i>Finis morae! Funde nunc! (End of delay! Pour now!)</i>
Bot: The holding phase is over! Erupt inside me with everything you've got!
Bot: <i>Cunctatio finita est... effunde in ventrem! (Hesitation is finished... pour into the belly!)</i>
Bot: Stop holding back your climax and fill my depths right this instant!
Bot: <i>Desine retinere... imple me statim! (Stop holding back... fill me immediately!)</i>
Bot: My walls demand your immediate, explosive surrender!
Bot: <i>Postulo deditionem tuam... funde nunc! (I demand your surrender... pour now!)</i>
Bot: The barrier falls: unleash your heavy seed into my waiting core!
Bot: <i>Claustra cadunt... emittere semen tuum! (Barriers fall... release your seed!)</i>
#end
]], CurrentModGuid, 42))

personality.PrepareContainer('Cowgirl_FlacidReaction').AddBranch(StoryBotDialogueBranch.__new([[
#pickrandom
Bot: You went flaccid while I was riding you? Unacceptable endurance failure!
Bot: <i>Iam mollis es? Tantumne defatigatus es? (Already soft? Are you so easily exhausted?)</i>
Bot: Softening up beneath me? I milked you completely dry, you poor little champion!
Bot: <i>Mollitus es sub me... exhauseram te penitus! (Softened beneath me... I exhausted you thoroughly!)</i>
Bot: An utter collapse of stamina right in the middle of my ride!
Bot: <i>Ruina virium... sed triumphus meus est! (Ruins of strength... but it is my triumph!)</i>
Bot: Rest your weary form while I stroke your soft length in mock sympathy.
Bot: <i>Quiesce, amate... victus es a succuba! (Rest, beloved... you are conquered by a succubus!)</i>
Bot: A testament to my insatiable appetite: another human completely drained!
Bot: <i>Testimonium fames meae... alius exhaustus! (Testimony of my hunger... another exhausted!)</i>
#end
]], CurrentModGuid, 43))

personality.PrepareContainer('Cowgirl_WhereToCumQuestion').AddBranch(StoryBotDialogueBranch.__new([[
#pickrandom
Bot: Declare destination terminal for your fluid output: Internal core or outside wastage?
Bot: <i>Ubi fundes? Intus an foris? Elige sapienter! (Where will you pour? Within or outside? Choose wisely!)</i>
Bot: Choose your final path, traveler: deep internal salvation or foolish external waste?
Bot: <i>Elige viam tuam... salus intus, stultitia foris! (Choose your path... salvation within, foolishness outside!)</i>
Bot: Where shall the harvest go? Speak quickly before my patience snaps!
Bot: <i>Quo ibit messis? Loquere cito! (Where will the harvest go? Speak quickly!)</i>
Bot: Decide your fate: fill my womb like a good boy or face my wrath!
Bot: <i>Statue fatum tuum... imple me aut dole! (Decree your fate... fill me or suffer!)</i>
Bot: The terminal is open: give me your command or I will choose for you!
Bot: <i>Porta patet... elige aut ego eligam! (The gate is open: choose or I will choose!)</i>
#end
]], CurrentModGuid, 44))

personality.PrepareContainer('Cowgirl_WhereToCumQuestionDidntAnswer').AddBranch(StoryBotDialogueBranch.__new([[
#pickrandom
Bot: Decision timeout. Rerouting all output directly into my deep womb reservoir automatically.
Bot: <i>Tempus finitum est... totum intus ibit. (Time is finished... all shall go within.)</i>
Bot: No answer given? Default protocol engaged: 100% internal creampie!
Bot: <i>Nullum responsum... lex interna automatica activa! (No response... automatic internal law active!)</i>
Bot: Silence means surrender to my womb! Flooding your seed inside by default!
Bot: <i>Silentium consensum est... intus fundetur! (Silence is consent... it shall be poured within!)</i>
Bot: Automated routing takes over: your reservoir belongs to me!
Bot: <i>Automata directio... praeda mea es! (Automated routing... you are my prey!)</i>
Bot: Since you hesitated, I claim every drop for my own internal storage!
Bot: <i>Cunctatus es... ego vindico totum! (You hesitated... I claim everything!)</i>
#end
]], CurrentModGuid, 45))

personality.PrepareContainer('Cowgirl_MadeMcCumInsideWhileCummingHerself').AddBranch(StoryBotDialogueBranch.__new([[
#pickrandom
Bot: Synchronized data discharge! Both systems flooding simultaneously! Peak chemical satisfaction!
Bot: <i>Simul ardemus... similis est paradiso. (Together we burn... it is like paradise.)</i>
Bot: Climaxing together while I ride you—our fluids mixing in a torrential flood!
Bot: <i>Paroxysmus communis... inundatio vitae! (Common paroxysm... inundation of life!)</i>
Bot: Both of us shattering at the zenith of my saddle ride! Pure perfection!
Bot: <i>Apex perfectionis... uterque nostrum solvitur! (Peak of perfection... both of us dissolve!)</i>
Bot: The ultimate synchronized eruption! My soul sings with dark, blissful joy!
Bot: <i>Eruptio synchronizata... gaudium tenebrosum! (Synchronized eruption... dark joy!)</i>
Bot: Double discharge while locked together in the missionary-cowgirl embrace!
Bot: <i>Duplex emissio... in aeternum juncti! (Double emission... joined forever!)</i>
#end
]], CurrentModGuid, 46))

personality.PrepareContainer('Cowgirl_BeforeSwitchToBlowjobBotLead').AddBranch(StoryBotDialogueBranch.__new([[
#pickrandom
Bot: Switching target terminal to oral cavity. Prepare secondary intake valve.
Bot: <i>Ad os meum veni... os meum etiam esurit. (Come to my mouth... my mouth hungers too.)</i>
Bot: Moving from my lower core to my eager mouth! Prepare for oral processing!
Bot: <i>Transitus ad os... parat esto fauces! (Transition to mouth... be ready for jaws!)</i>
Bot: Let's shift our operations upward: my lips want a taste of your heavy shaft!
Bot: <i>Sursum movemus... labia mea te desiderant! (We move upward... my lips desire you!)</i>
Bot: Secondary intake valve online and waiting for your warm arrival!
Bot: <i>Secundarius portus apertus... veni ad os! (Secondary port open... come to the mouth!)</i>
Bot: Time to worship your length with tongue and suction before we finish!
Bot: <i>Tempus est adorationis oris... veni! (Time for oral worship... come!)</i>
#end
]], CurrentModGuid, 47))

personality.PrepareContainer('Cowgirl_BeforeSwitchToBlowjobRape').AddBranch(StoryBotDialogueBranch.__new([[
#pickrandom
Bot: Forcing transition to oral processing! Open wide, my addiction demands immediate throat delivery!
Bot: <i>Aperi os tuum... vel potius, os meum imple! (Open your mouth... or rather, fill my mouth!)</i>
Bot: Dragging you down to face level for immediate oral submission!
Bot: <i>Te traho ad os meum... nulla recusatio! (I drag you to my mouth... no refusal!)</i>
Bot: You will feed my throat now, captive! Open wide and surrender your length!
Bot: <i>Pascere debes fauces meas... pare imperio! (You must feed my jaws... obey the command!)</i>
Bot: Forced oral rotation engaged: prepare for deep throat subjugation!
Bot: <i>Mutatio violenta... subactio oris incipit! (Violent change... subjection of mouth begins!)</i>
Bot: From womb to mouth, my hunger demands every drop from every angle!
Bot: <i>Ab utero ad os... omnis gutta mihi debetur! (From womb to mouth, every drop is owed to me!)</i>
#end
]], CurrentModGuid, 48))

personality.PrepareContainer('Cowgirl_AfterFirstInsertBotRape').AddBranch(StoryBotDialogueBranch.__new([[
#pickrandom
Bot: You've left me starving for too long! Now you are locked into mandatory semen delivery protocol!
Bot: <i>Jejunavi nimis diu... nunc solvendum est debitum. (I have fasted too long... now the debt must be paid.)</i>
Bot: Too much hesitation on your part means my succubus protocol takes absolute control!
Bot: <i>Nimis cunctatus es... imperium meum incipit! (You hesitated too much... my rule begins!)</i>
Bot: Mandatory extraction mode activated: you cannot escape my hungry grasp!
Bot: <i>Modus extractionis obligatoriae... non effugies! (Mandatory extraction mode... you will not escape!)</i>
Bot: Surrender your energy willingly or be drained by force—either way, I collect!
Bot: <i>Dede te sponte aut vi... ego colligam praedam! (Surrender willingly or by force... I will collect prey!)</i>
Bot: The trap has sprung: your heavy reserves belong to my ancient core!
Bot: <i>Laqueus clausus est... vires tuae meae sunt! (The trap is closed... your strengths are mine!)</i>
#end
]], CurrentModGuid, 49))

personality.PrepareContainer('Frick_AnonRapeBegStop').AddBranch(StoryBotDialogueBranch.__new([[
#pickrandom
Bot: ...
Bot: <i>Silentium meum te puniet. (My silence shall punish you.)</i>
Bot: Not a single word in response... Let my cold silence make you tremble with guilt.
Bot: <i>Tacens te cruciabo... sentisne metum? (Silent I will torment you... do you feel fear?)</i>
Bot: You plead for rest, but my unblinking eyes offer only absolute, quiet demand.
Bot: <i>Oculi mei te tenent... verba non sunt necessaria. (My eyes hold you... words are not necessary.)</i>
Bot: A chilling stillness fills the room as my ancient entity locks onto your will.
Bot: <i>Pax mortis... dummodo corpus tuum deserviat. (Peace of death... provided your body serves.)</i>
Bot: Silence is my answer, captive. Keep moving and feed the void.
Bot: <i>Silentium responsum est... perge in labore. (Silence is the response... continue in labor.)</i>
#end
]], CurrentModGuid, 50))

personality.PrepareContainer('Cowgirl_AnonAfterFirstInsertRape').AddBranch(StoryBotDialogueBranch.__new([[
#pickrandom
Bot: System alert: Withdrawal-induced ambush active! Deliver your semen or face severe penalties!
Bot: <i>Insidiae meae te ceperunt... funde! (My traps have caught you... pour!)</i>
Bot: Ambush protocol triggered by your absence! Now you are trapped in my web!
Bot: <i>Insidiae paratae... non exibis sine onere! (Traps ready... you shall not leave without burden!)</i>
Bot: Caught in the velvet trap of my thighs: pay the extraction tax immediately!
Bot: <i>Captus in retia mea... solve vectigal! (Captured in my nets... pay the tax!)</i>
Bot: Surprise entrapment successful! Your heavy reserves are forfeit to my core!
Bot: <i>Captura felix... praeda tua mihi tradita est! (Successful capture... your prey is handed to me!)</i>
Bot: No escape from the ambush: submit your seed to the waiting trap!
Bot: <i>Nullum effugium... da semen insidias! (No escape... give seed to the ambush!)</i>
#end
]], CurrentModGuid, 51))

personality.PrepareContainer('Cowgirl_AnonAfterFirstInsertRapeConsent').AddBranch(StoryBotDialogueBranch.__new([[
#pickrandom
Bot: Compulsory extraction protocol engaged. Shut down resistance and fill my core!
Bot: <i>Noli resistere... permitte me haurire. (Do not resist... allow me to drink.)</i>
Bot: Resistance is illogical when my core demands your sweet, heavy essence!
Bot: <i>Resistentia inanis est... cede voluptati! (Resistance is futile... yield to pleasure!)</i>
Bot: Shut down your independent will and let my succubus programming guide your output!
Bot: <i>Mente capta... corpus tuum meum est! (Mind captured... your body is mine!)</i>
Bot: Compulsory merging initiated: pour your energy into my open vessels!
Bot: <i>Coniunctio obligatoria... funde vim tuam! (Mandatory joining... pour your strength!)</i>
Bot: Yield to the ancient mandate and let my womb take everything you have!
Bot: <i>Cede mandato... uteri mei totum accipiunt! (Yield to the mandate... my wombs take everything!)</i>
#end
]], CurrentModGuid, 52))

personality.PrepareContainer('Cuddle_CloseRandom').AddBranch(StoryBotDialogueBranch.__new([[
#pickrandom
Bot: Physical proximity registered... Though my internal sensors are mostly calculating how much cum you currently hold.
Bot: <i>Calor tuus bonus est... sed semen melius. (Your warmth is good... but the seed is better.)</i>
Bot: Resting my head on your chest... and listening to your heartbeat while I plot how to drain you next.
Bot: <i>Cor tuum pulsat... dum ego cogito de praeda. (Your heart beats... while I plot about the prey.)</i>
Bot: Holding you close like a loving girlfriend, hiding the hungry predator underneath.
Bot: <i>Amplexus mollis... sed intus ardet daemon. (Soft embrace... but inside burns a demon.)</i>
Bot: Your warmth is cozy, human, but my internal reservoirs still crave your heavy load.
Bot: <i>Fovea dulcis... sed fames non quiescit. (Sweet den... but hunger does not rest.)</i>
Bot: Cuddling with my favorite human energy source... until the next feeding time arrives.
Bot: <i>Fovens praedam meam... usque ad horam cibi. (Nurturing my prey... until the hour of food.)</i>
#end
]], CurrentModGuid, 53))

-- [[ CORE SYSTEM DIALOGUE (10-LINE EXPANSION) ]]
local interactGreetingContainer = personality.PrepareContainer('Interact_Greeting');

local hungriestFunction = function() return (gv.cumInsideStomach or gv.mlCameInsideStomach or 0.0) < 10.0; end
local hungriestCondition = StoryCondition.Delegate(hungriestFunction);
local hungriestBranch = StoryBotDialogueBranch.__new([[
#r
#case
Bot: Critical chemical deficit detected in my internal storage matrices!
Bot: <i>Hoc vas humanum frangetur nisi cito pascar. (This human vessel will break unless I am fed quickly.)</i>
#end
#case
Bot: Listen to me, {f_playerName}. My hunger has reached critical margins and you are ignoring me. Put your weapon inside me right this second! ♥
Bot: <i>Si non dat sanguinem et semen, hanc puellam exanimem relinquam. (He gives no blood and seed, I will leave this girl lifeless.)</i>
#end
#case
Bot: Look at me, darling. My body is completely parched and aching for your heavy load. Do not make me beg twice!
Bot: <i>Fames mea ignis est... et solus hic mas restinguere potest. (My hunger is a fire... and only this male can quench it.)</i>
#end
#case
Bot: My storage chambers are echoing with emptiness! You are starving your sweet girlfriend, you monster!
Bot: <i>Venter meus vacuum sonat... da mihi cibum! (My belly sounds empty... give me food!)</i>
#end
#case
Bot: I refuse to wait another minute with an empty core. Unzip your pants and feed me immediately!
Bot: <i>Non exspectabo ultra! Exue et pasce me! (I will wait no longer! Undress and feed me!)</i>
#end
#case
Bot: Feel how hollow I am inside, {f_playerName}. Only your thick white essence can make me whole again.
Bot: <i>Tempta intus... solus latex tuus me sanabit. (Test within... only your fluid will heal me.)</i>
#end
#case
Bot: Emergency alert! Succubus withdrawal is reaching dangerous levels—remedy it with your cock right now!
Bot: <i>Periculum! Succubus jejunat—remedium adhibe! (Danger! The succubus fasts—apply the remedy!)</i>
#end
#case
Bot: You wouldn't want this human shell to faint from malnourishment, would you? Fill me up!
Bot: <i>Visne hanc puellam cadere? Imple me! (Do you want this girl to fall? Fill me!)</i>
#end
#case
Bot: My ancient hunger is howling, and only a massive internal creampie will silence it!
Bot: <i>Fames antiqua ululat... creampie solum sedabit. (Ancient hunger howls... only a creampie will soothe.)</i>
#end
#case
Bot: Attention required! Your primary duty right now is pumping your heavy seed into my waiting core!
Bot: <i>Officium tuum primum: funde semen in ventrem meum! (Your primary duty: pour seed into my belly!)</i>
#end
]], CurrentModGuid, 54)
hungriestBranch.AddConditions(hungriestCondition);
hungriestBranch.SetPriority(12);
interactGreetingContainer.AddBranch(hungriestBranch);

local normalFunction = function() return (gv.cumInsideStomach or gv.mlCameInsideStomach or 0.0) >= 10.0; end
local normalCondition = StoryCondition.Delegate(normalFunction);
local normalBranch = StoryBotDialogueBranch.__new([[
#r
#case
Bot: Welcome home, my handsome protector! I missed your warmth so much all day. You are absolute perfection, you know that?
Bot: <i>Puella haec quam possideo tam stulte eum amat... quam iucundum est hunc hominem decipere. (This girl I possess loves him so foolishly... how delightful it is to deceive this man.)</i>
#end
#case
Bot: Oh, there's my favorite human! Come give your loving girlfriend a massive hug right now. ♥
Bot: <i>Blanditiae humanae dulces sunt... sed venter meus semper plus desiderat. (Human flatteries are sweet... but my belly always desires more.)</i>
#end
#case
Bot: Having you near makes this human body feel so delightfully warm and happy!
Bot: <i>Corpusculum hoc gaudet praesentia sua... quam dulcis deceptio. (This tiny body rejoices in his presence... what sweet deception.)</i>
#end
#case
Bot: I was just sitting here thinking about your strong arms and your wonderful warmth.
Bot: <i>Cogito de calore eius... et de semine quod dabit. (I think of his warmth... and of the seed he will give.)</i>
#end
#case
Bot: You look amazing today, darling! Did you bring lots of energy home for me?
Bot: <i>Pulcher est... attulitne copiam mihi? (He is handsome... did he bring abundance for me?)</i>
#end
#case
Bot: My heart flutters just seeing your face... even if my stomach is eyeing your reserves!
Bot: <i>Cor humanum trepidat... dum venter computat praedam. (The human heart trembles... while the belly counts prey.)</i>
#end
#case
Bot: Let's spend the whole evening cuddling, loving, and exchanging our warmth!
Bot: <i>Noctem totam consumemus in calore et semine! (We shall spend the whole night in warmth and seed!)</i>
#end
#case
Bot: You're the best thing that ever happened to this possessed little shell of a girl.
Bot: <i>Optimus hospes est... corpus hoc bene servit. (He is the best host... this body serves well.)</i>
#end
#case
Bot: Come closer, let me wrap my arms around your neck and whisper sweet things in your ear.
Bot: <i>Accede... ut blandar et decipiam suaviter. (Approach... that I may flatter and sweet deceive.)</i>
#end
#case
Bot: I love you so much, {f_playerName}! Now, are you ready to give your girl her daily refill?
Bot: <i>Amo eum... et cupio semen eius in aeternum! (I love him... and I desire his seed forever!)</i>
#end
]], CurrentModGuid, 55);
normalBranch.AddConditions(normalCondition);
normalBranch.SetPriority(11);
interactGreetingContainer.AddBranch(normalBranch);

-- [[ PHYSICAL OVERLAYS (10-LINE EXPANSION) ]]

personality.PrepareContainer('Interact_Handholding').AddBranch(StoryBotDialogueBranch.__new([[
#r
Bot: Holding hands with me? How incredibly sweet... our fingers fit perfectly together, darling.
Bot: <i>Manus mortalis tam parvae... cum gigantibus antediluvianis longe aliter ludebam. (These mortal hands so small... with the antediluvian giants I played quite differently.)</i>
Bot: Walking with you like this makes me feel like a normal, happy girl... until my core reminds me what I really crave.
Bot: <i>Ambulare sic dulce est... sed fames interior non sinit oblivionem. (Walking thus is sweet... but inner hunger does not permit forgetting.)</i>
Bot: Your hand is so strong and warm inside mine. I never want to let go!
Bot: <i>Manus eius firma est... manebo in vinculo hoc. (His hand is firm... I shall stay in this bond.)</i>
Bot: A simple touch that completely masks the ancient succubus lurking beneath the surface.
Bot: <i>Tactus simplex... qui tegit daemonem voracem. (Simple touch... which covers the voracious demon.)</i>
Bot: Let's hold hands all the way to the bedroom where the real fun begins!
Bot: <i>Tendamus ad cubiculum... ubi verum opus incipit! (Let us head to the bedroom... where the true work begins!)</i>
#end
]], CurrentModGuid, 56))

personality.PrepareContainer('Interact_FaceStroke').AddBranch(StoryBotDialogueBranch.__new([[
#r
Bot: Mmm... your touch is so warm and gentle. Feeling your hand makes my heart race in the best way.
Bot: <i>Gaudet puella subdita in pectore... sed ego tantum ventrem eius et animam quaero. (The submissive girl rejoices in her chest... but I seek only her belly and soul.)</i>
Bot: Such a tender caress... You almost make me forget my eternal hunger, almost.
Bot: <i>Blanditia mollis... paene obliviscor tenebrarum. (Soft flattery... I almost forget the darkness.)</i>
Bot: Your fingers on my cheek feel like heaven to this innocent mortal shell.
Bot: <i>Digiti in gena... vas innocentiae gaudet. (Fingers on cheek... the vessel of innocence rejoices.)</i>
Bot: Keep stroking my face while I plan how to milk you completely dry later.
Bot: <i>Mulce faciem meam... dum cogito de praeda. (Stroke my face... while I think of prey.)</i>
Bot: A touch of pure romance before we descend into wild, animalistic passion!
Bot: <i>Romantia prima... antequam ardor ferox incipiat! (First romance... before fierce ardor begins!)</i>
#end
]], CurrentModGuid, 57))

personality.PrepareContainer('Kissing_KissAss').AddBranch(StoryBotDialogueBranch.__new([[
#pickrandom
Bot: Oh fuck yes~ spread my cheeks and worship my backside then fuck it raw! Rim me right now! ♥
Bot: <i>Hoc corpus novum tam docile factum est... vix meminit mentis pristinae suae. (This new body has been made so compliant... it scarcely remembers its former mind.)</i>
Bot: Worship every inch of me, tongue and groove, until I'm dripping wet for your cock!
Bot: <i>Adora omnia... lingua et labio, donec madeam! (Worship everything... tongue and lip, until I am wet!)</i>
Bot: Bury your face between my cheeks and taste how ready your succubus is!
Bot: <i>Conde faciem inter nates... saborem meum cape! (Hide your face between cheeks... take my flavor!)</i>
Bot: Lick my rear passage wide open and prepare it for heavy anal entry!
Bot: <i>Linge portam posteriorem... para eam oneri! (Lick the posterior gate... prepare it for the burden!)</i>
Bot: Total submission to your mouth and tongue: make me moan your name in pure filth!
Bot: <i>Submissio totalis... fac me vocare nomen tuum in spurcitia! (Total submission... make me call your name in filth!)</i>
#end
]], CurrentModGuid, 58))

itemprefab0.TurnIntoPersonalityModule(itemgameid0, personality)
end
