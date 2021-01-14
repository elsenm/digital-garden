# Setup
1. Install [JDK 8](https://www.azul.com/downloads/zulu-community/?version=java-8-lts&architecture=x86-64-bit&package=jdk).

    !!! important
		It has to be Java 8. Any other Java version, especially newer, will not work.

2. Install the [IntelliJ IDEA Community Edition](https://www.jetbrains.com/idea/download).
3. Download the **recommended** [Forge Mdk](https://files.minecraftforge.net).
4. Create a mod folder.

	!!! note
		Mod folder names should be in `CamelCase`.

5. Unzip the _Forge Mdk_ archive into the newly created mod folder.
6. Open _IntelliJ IDEA_.
7. Import the `build.gradle` file.
8. Rename the `com.example.examplemod` package to `com.developer_name.mod_name`.

	!!! example
		`com.marvin_elsen.tutorial`

9. Rename the `ExampleMod` class to `ModName`.

	!!! example
		`Tutorial`

10. Remove all methods, but the constructor and `doClientStuff` and `setup`. The deleted methods will be implemented in other classes later.
11. Fix the errors in the constructor by removing the faulty `addListener` calls.
12. Change the mod ID in the `java @Mod("example")` annotation to an ID unique to your mod.

	!!! example
		`java @Mod("metutorial")`

13. Change the `modId` property in the `src/main/resources/META-INF/mods.toml` manifest file to the same value as in step 12.
14. Change the `version` property in the same file to `"MINECRAFT_VERSION-MOD_VERSION"`.

	!!! example
		`version="1.16.3-1.0.0"`

15. Change the `displayName` property to whatever you like.
16. Change any of the optional properties if applicable.
17. `cd` to your mod's root folder.
18. Execute the command `./gradlew genIntellijRuns`.
19. Use the run configuration `runClient` to build and run the mod.

# Resources
A resource is extra data used by the game, and is stored in a data file, instead of being in the code.

!!! note
	All resources should have `snake_case` paths and filenames.

There are two types of resources in Minecraft:

**Assets**
:   Client-side resources used for visuals such as models, textures and localization controlled by [_resource packs_](https://minecraft.gamepedia.com/Resource_Pack).

**Data**
:   Server-side resources used for gameplay such as recipes and loot tables controlled by [_data packs_](https://minecraft.gamepedia.com/Data_Pack).

# Add Item
1. Create the `com.marvin_elsen.tutorial.util` package.
2. Create the `RegistryHandler` Java class in that package.
3. Paste the following code to set the [properties](https://mcforge.readthedocs.io/en/1.16.x/items/items/#basic-items):
	```java
	private static final DeferredRegister<Item> ITEMS = DeferredRegister.create(ForgeRegistries.ITEMS, MODID);

	public static final RegistryObject<Item> RUBY_ITEM = ITEMS.register("ruby", ItemBase::new);
	```
4. Create the `com.marvin_elsen.tutorial.items` package.
5. Create the `ItemBase` Java class in that package.
6. Pase the following code:
	```java
    public class Test {
        public static final field;
        // Test class
        public ItemBase()
        {
            super(new Item.Properties().group(ItemGroup.MATERIALS));
            int local = 100;
            String test = "Test String";
        }
    }
	```
7. TODO

# References
* [MinecraftForge Documentation](https://mcforge.readthedocs.io/en/1.16.x/)
* [**Video:** Minecraft Forge Modding Tutorials (1.15/1.16)](https://www.youtube.com/watch?v=JOTH1eDP99Y&list=PLDhiRTZ_vnoUI3-9z0Zg-I8tTSp3EfOia)
