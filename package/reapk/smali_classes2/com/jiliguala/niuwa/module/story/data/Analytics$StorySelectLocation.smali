.class public final enum Lcom/jiliguala/niuwa/module/story/data/Analytics$StorySelectLocation;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/jiliguala/niuwa/module/story/data/Analytics$Propertyable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiliguala/niuwa/module/story/data/Analytics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "StorySelectLocation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/jiliguala/niuwa/module/story/data/Analytics$StorySelectLocation;",
        ">;",
        "Lcom/jiliguala/niuwa/module/story/data/Analytics$Propertyable;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/jiliguala/niuwa/module/story/data/Analytics$StorySelectLocation;

.field public static final enum EOB_RECOMMENDED:Lcom/jiliguala/niuwa/module/story/data/Analytics$StorySelectLocation;

.field public static final enum FARFOODLE:Lcom/jiliguala/niuwa/module/story/data/Analytics$StorySelectLocation;

.field public static final enum FAVORITES:Lcom/jiliguala/niuwa/module/story/data/Analytics$StorySelectLocation;

.field public static final enum FEATURED:Lcom/jiliguala/niuwa/module/story/data/Analytics$StorySelectLocation;

.field public static final enum LAND:Lcom/jiliguala/niuwa/module/story/data/Analytics$StorySelectLocation;

.field public static final enum NOTIFICATION:Lcom/jiliguala/niuwa/module/story/data/Analytics$StorySelectLocation;

.field public static final enum ONEBOOK_HOME:Lcom/jiliguala/niuwa/module/story/data/Analytics$StorySelectLocation;

.field public static final enum RECENT:Lcom/jiliguala/niuwa/module/story/data/Analytics$StorySelectLocation;

.field public static final enum SEARCH:Lcom/jiliguala/niuwa/module/story/data/Analytics$StorySelectLocation;

.field public static final enum SPOTLIGHT:Lcom/jiliguala/niuwa/module/story/data/Analytics$StorySelectLocation;

.field public static final enum URL:Lcom/jiliguala/niuwa/module/story/data/Analytics$StorySelectLocation;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 200
    new-instance v0, Lcom/jiliguala/niuwa/module/story/data/Analytics$StorySelectLocation;

    const-string v1, "FARFOODLE"

    invoke-direct {v0, v1, v3}, Lcom/jiliguala/niuwa/module/story/data/Analytics$StorySelectLocation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jiliguala/niuwa/module/story/data/Analytics$StorySelectLocation;->FARFOODLE:Lcom/jiliguala/niuwa/module/story/data/Analytics$StorySelectLocation;

    new-instance v0, Lcom/jiliguala/niuwa/module/story/data/Analytics$StorySelectLocation;

    const-string v1, "LAND"

    invoke-direct {v0, v1, v4}, Lcom/jiliguala/niuwa/module/story/data/Analytics$StorySelectLocation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jiliguala/niuwa/module/story/data/Analytics$StorySelectLocation;->LAND:Lcom/jiliguala/niuwa/module/story/data/Analytics$StorySelectLocation;

    new-instance v0, Lcom/jiliguala/niuwa/module/story/data/Analytics$StorySelectLocation;

    const-string v1, "EOB_RECOMMENDED"

    invoke-direct {v0, v1, v5}, Lcom/jiliguala/niuwa/module/story/data/Analytics$StorySelectLocation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jiliguala/niuwa/module/story/data/Analytics$StorySelectLocation;->EOB_RECOMMENDED:Lcom/jiliguala/niuwa/module/story/data/Analytics$StorySelectLocation;

    new-instance v0, Lcom/jiliguala/niuwa/module/story/data/Analytics$StorySelectLocation;

    const-string v1, "FAVORITES"

    invoke-direct {v0, v1, v6}, Lcom/jiliguala/niuwa/module/story/data/Analytics$StorySelectLocation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jiliguala/niuwa/module/story/data/Analytics$StorySelectLocation;->FAVORITES:Lcom/jiliguala/niuwa/module/story/data/Analytics$StorySelectLocation;

    new-instance v0, Lcom/jiliguala/niuwa/module/story/data/Analytics$StorySelectLocation;

    const-string v1, "FEATURED"

    invoke-direct {v0, v1, v7}, Lcom/jiliguala/niuwa/module/story/data/Analytics$StorySelectLocation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jiliguala/niuwa/module/story/data/Analytics$StorySelectLocation;->FEATURED:Lcom/jiliguala/niuwa/module/story/data/Analytics$StorySelectLocation;

    new-instance v0, Lcom/jiliguala/niuwa/module/story/data/Analytics$StorySelectLocation;

    const-string v1, "SPOTLIGHT"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/jiliguala/niuwa/module/story/data/Analytics$StorySelectLocation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jiliguala/niuwa/module/story/data/Analytics$StorySelectLocation;->SPOTLIGHT:Lcom/jiliguala/niuwa/module/story/data/Analytics$StorySelectLocation;

    new-instance v0, Lcom/jiliguala/niuwa/module/story/data/Analytics$StorySelectLocation;

    const-string v1, "URL"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/jiliguala/niuwa/module/story/data/Analytics$StorySelectLocation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jiliguala/niuwa/module/story/data/Analytics$StorySelectLocation;->URL:Lcom/jiliguala/niuwa/module/story/data/Analytics$StorySelectLocation;

    new-instance v0, Lcom/jiliguala/niuwa/module/story/data/Analytics$StorySelectLocation;

    const-string v1, "SEARCH"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/jiliguala/niuwa/module/story/data/Analytics$StorySelectLocation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jiliguala/niuwa/module/story/data/Analytics$StorySelectLocation;->SEARCH:Lcom/jiliguala/niuwa/module/story/data/Analytics$StorySelectLocation;

    new-instance v0, Lcom/jiliguala/niuwa/module/story/data/Analytics$StorySelectLocation;

    const-string v1, "RECENT"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/jiliguala/niuwa/module/story/data/Analytics$StorySelectLocation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jiliguala/niuwa/module/story/data/Analytics$StorySelectLocation;->RECENT:Lcom/jiliguala/niuwa/module/story/data/Analytics$StorySelectLocation;

    new-instance v0, Lcom/jiliguala/niuwa/module/story/data/Analytics$StorySelectLocation;

    const-string v1, "NOTIFICATION"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/jiliguala/niuwa/module/story/data/Analytics$StorySelectLocation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jiliguala/niuwa/module/story/data/Analytics$StorySelectLocation;->NOTIFICATION:Lcom/jiliguala/niuwa/module/story/data/Analytics$StorySelectLocation;

    new-instance v0, Lcom/jiliguala/niuwa/module/story/data/Analytics$StorySelectLocation;

    const-string v1, "ONEBOOK_HOME"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/jiliguala/niuwa/module/story/data/Analytics$StorySelectLocation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jiliguala/niuwa/module/story/data/Analytics$StorySelectLocation;->ONEBOOK_HOME:Lcom/jiliguala/niuwa/module/story/data/Analytics$StorySelectLocation;

    .line 199
    const/16 v0, 0xb

    new-array v0, v0, [Lcom/jiliguala/niuwa/module/story/data/Analytics$StorySelectLocation;

    sget-object v1, Lcom/jiliguala/niuwa/module/story/data/Analytics$StorySelectLocation;->FARFOODLE:Lcom/jiliguala/niuwa/module/story/data/Analytics$StorySelectLocation;

    aput-object v1, v0, v3

    sget-object v1, Lcom/jiliguala/niuwa/module/story/data/Analytics$StorySelectLocation;->LAND:Lcom/jiliguala/niuwa/module/story/data/Analytics$StorySelectLocation;

    aput-object v1, v0, v4

    sget-object v1, Lcom/jiliguala/niuwa/module/story/data/Analytics$StorySelectLocation;->EOB_RECOMMENDED:Lcom/jiliguala/niuwa/module/story/data/Analytics$StorySelectLocation;

    aput-object v1, v0, v5

    sget-object v1, Lcom/jiliguala/niuwa/module/story/data/Analytics$StorySelectLocation;->FAVORITES:Lcom/jiliguala/niuwa/module/story/data/Analytics$StorySelectLocation;

    aput-object v1, v0, v6

    sget-object v1, Lcom/jiliguala/niuwa/module/story/data/Analytics$StorySelectLocation;->FEATURED:Lcom/jiliguala/niuwa/module/story/data/Analytics$StorySelectLocation;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/jiliguala/niuwa/module/story/data/Analytics$StorySelectLocation;->SPOTLIGHT:Lcom/jiliguala/niuwa/module/story/data/Analytics$StorySelectLocation;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/jiliguala/niuwa/module/story/data/Analytics$StorySelectLocation;->URL:Lcom/jiliguala/niuwa/module/story/data/Analytics$StorySelectLocation;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/jiliguala/niuwa/module/story/data/Analytics$StorySelectLocation;->SEARCH:Lcom/jiliguala/niuwa/module/story/data/Analytics$StorySelectLocation;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/jiliguala/niuwa/module/story/data/Analytics$StorySelectLocation;->RECENT:Lcom/jiliguala/niuwa/module/story/data/Analytics$StorySelectLocation;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/jiliguala/niuwa/module/story/data/Analytics$StorySelectLocation;->NOTIFICATION:Lcom/jiliguala/niuwa/module/story/data/Analytics$StorySelectLocation;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/jiliguala/niuwa/module/story/data/Analytics$StorySelectLocation;->ONEBOOK_HOME:Lcom/jiliguala/niuwa/module/story/data/Analytics$StorySelectLocation;

    aput-object v2, v0, v1

    sput-object v0, Lcom/jiliguala/niuwa/module/story/data/Analytics$StorySelectLocation;->$VALUES:[Lcom/jiliguala/niuwa/module/story/data/Analytics$StorySelectLocation;

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
    .line 199
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/jiliguala/niuwa/module/story/data/Analytics$StorySelectLocation;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 199
    const-class v0, Lcom/jiliguala/niuwa/module/story/data/Analytics$StorySelectLocation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/story/data/Analytics$StorySelectLocation;

    return-object v0
.end method

.method public static values()[Lcom/jiliguala/niuwa/module/story/data/Analytics$StorySelectLocation;
    .locals 1

    .prologue
    .line 199
    sget-object v0, Lcom/jiliguala/niuwa/module/story/data/Analytics$StorySelectLocation;->$VALUES:[Lcom/jiliguala/niuwa/module/story/data/Analytics$StorySelectLocation;

    invoke-virtual {v0}, [Lcom/jiliguala/niuwa/module/story/data/Analytics$StorySelectLocation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/jiliguala/niuwa/module/story/data/Analytics$StorySelectLocation;

    return-object v0
.end method


# virtual methods
.method public toPropertyValue()Ljava/lang/String;
    .locals 3

    .prologue
    .line 204
    sget-object v0, Lcom/jiliguala/niuwa/module/story/data/Analytics$StorySelectLocation;->RECENT:Lcom/jiliguala/niuwa/module/story/data/Analytics$StorySelectLocation;

    if-ne p0, v0, :cond_0

    .line 205
    const-string v0, "homepage section - Recently Read"

    .line 207
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/story/data/Analytics$StorySelectLocation;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "_"

    const-string v2, " "

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
