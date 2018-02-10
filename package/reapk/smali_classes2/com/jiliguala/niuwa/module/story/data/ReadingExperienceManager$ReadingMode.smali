.class public final enum Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager$ReadingMode;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/jiliguala/niuwa/module/story/data/Analytics$Propertyable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ReadingMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager$ReadingMode;",
        ">;",
        "Lcom/jiliguala/niuwa/module/story/data/Analytics$Propertyable;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager$ReadingMode;

.field public static final enum AUTO_PLAY:Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager$ReadingMode;

.field public static final enum READ_TO_ME:Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager$ReadingMode;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 950
    new-instance v0, Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager$ReadingMode;

    const-string v1, "READ_TO_ME"

    invoke-direct {v0, v1, v2}, Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager$ReadingMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager$ReadingMode;->READ_TO_ME:Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager$ReadingMode;

    .line 957
    new-instance v0, Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager$ReadingMode;

    const-string v1, "AUTO_PLAY"

    invoke-direct {v0, v1, v3}, Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager$ReadingMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager$ReadingMode;->AUTO_PLAY:Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager$ReadingMode;

    .line 940
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager$ReadingMode;

    sget-object v1, Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager$ReadingMode;->READ_TO_ME:Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager$ReadingMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager$ReadingMode;->AUTO_PLAY:Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager$ReadingMode;

    aput-object v1, v0, v3

    sput-object v0, Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager$ReadingMode;->$VALUES:[Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager$ReadingMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 940
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager$ReadingMode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 940
    const-class v0, Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager$ReadingMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager$ReadingMode;

    return-object v0
.end method

.method public static values()[Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager$ReadingMode;
    .locals 1

    .prologue
    .line 940
    sget-object v0, Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager$ReadingMode;->$VALUES:[Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager$ReadingMode;

    invoke-virtual {v0}, [Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager$ReadingMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager$ReadingMode;

    return-object v0
.end method


# virtual methods
.method public toPropertyValue()Ljava/lang/String;
    .locals 3

    .prologue
    .line 961
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager$ReadingMode;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "_"

    const-string v2, " "

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
