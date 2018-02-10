.class public final Lcom/jiliguala/niuwa/module/story/data/Analytics;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jiliguala/niuwa/module/story/data/Analytics$Properties;,
        Lcom/jiliguala/niuwa/module/story/data/Analytics$Propertyable;,
        Lcom/jiliguala/niuwa/module/story/data/Analytics$ShareType;,
        Lcom/jiliguala/niuwa/module/story/data/Analytics$StorySelectLocation;
    }
.end annotation


# static fields
.field public static INSTANCE:Lcom/jiliguala/niuwa/module/story/data/Analytics; = null
    .annotation build Lorg/b/a/d;
    .end annotation
.end field

.field public static SHOW_TOAST:Z = false

.field private static final TAG:Ljava/lang/String; = "Analytics"


# instance fields
.field private mApplication:Lcom/jiliguala/niuwa/MyApplication;

.field private mEventsTracked:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const/4 v0, 0x0

    sput-boolean v0, Lcom/jiliguala/niuwa/module/story/data/Analytics;->SHOW_TOAST:Z

    .line 27
    new-instance v0, Lcom/jiliguala/niuwa/module/story/data/Analytics;

    invoke-direct {v0}, Lcom/jiliguala/niuwa/module/story/data/Analytics;-><init>()V

    sput-object v0, Lcom/jiliguala/niuwa/module/story/data/Analytics;->INSTANCE:Lcom/jiliguala/niuwa/module/story/data/Analytics;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    return-void
.end method

.method private track(Ljava/lang/String;)V
    .locals 2
    .param p1, "event"    # Ljava/lang/String;

    .prologue
    .line 54
    new-instance v0, Lcom/jiliguala/niuwa/module/story/data/Analytics$Properties;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/jiliguala/niuwa/module/story/data/Analytics$Properties;-><init>(Lcom/jiliguala/niuwa/module/story/data/Analytics;Lcom/jiliguala/niuwa/module/story/data/Analytics$1;)V

    invoke-direct {p0, p1, v0}, Lcom/jiliguala/niuwa/module/story/data/Analytics;->track(Ljava/lang/String;Lcom/jiliguala/niuwa/module/story/data/Analytics$Properties;)V

    .line 55
    return-void
.end method

.method private track(Ljava/lang/String;Lcom/jiliguala/niuwa/module/story/data/Analytics$Properties;)V
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "properties"    # Lcom/jiliguala/niuwa/module/story/data/Analytics$Properties;

    .prologue
    .line 58
    iget v0, p0, Lcom/jiliguala/niuwa/module/story/data/Analytics;->mEventsTracked:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/jiliguala/niuwa/module/story/data/Analytics;->mEventsTracked:I

    .line 79
    return-void
.end method


# virtual methods
.method public flush()V
    .locals 0

    .prologue
    .line 51
    return-void
.end method

.method public init(Lcom/jiliguala/niuwa/MyApplication;)V
    .locals 0
    .param p1, "application"    # Lcom/jiliguala/niuwa/MyApplication;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/story/data/Analytics;->mApplication:Lcom/jiliguala/niuwa/MyApplication;

    .line 48
    return-void
.end method

.method public trackAppInstalled()V
    .locals 1

    .prologue
    .line 98
    const-string v0, "App Installed"

    invoke-direct {p0, v0}, Lcom/jiliguala/niuwa/module/story/data/Analytics;->track(Ljava/lang/String;)V

    .line 99
    return-void
.end method

.method public trackAppOpened()V
    .locals 1

    .prologue
    .line 88
    iget v0, p0, Lcom/jiliguala/niuwa/module/story/data/Analytics;->mEventsTracked:I

    if-lez v0, :cond_0

    .line 92
    :cond_0
    const-string v0, "App Opened"

    invoke-direct {p0, v0}, Lcom/jiliguala/niuwa/module/story/data/Analytics;->track(Ljava/lang/String;)V

    .line 93
    return-void
.end method

.method public trackChooseReadToMeType(Lcom/jiliguala/niuwa/module/story/data/json/StorySummary;Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager$ReadingMode;)V
    .locals 4
    .param p1, "story"    # Lcom/jiliguala/niuwa/module/story/data/json/StorySummary;
    .param p2, "rtmType"    # Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager$ReadingMode;

    .prologue
    .line 120
    const-string v0, "Read - Choose Read To Me type"

    new-instance v1, Lcom/jiliguala/niuwa/module/story/data/Analytics$Properties;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/jiliguala/niuwa/module/story/data/Analytics$Properties;-><init>(Lcom/jiliguala/niuwa/module/story/data/Analytics;Lcom/jiliguala/niuwa/module/story/data/Analytics$1;)V

    const-string v2, "story_id"

    .line 121
    invoke-virtual {p1}, Lcom/jiliguala/niuwa/module/story/data/json/StorySummary;->get_id()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/jiliguala/niuwa/module/story/data/Analytics$Properties;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/jiliguala/niuwa/module/story/data/Analytics$Properties;

    move-result-object v1

    const-string v2, "title"

    invoke-virtual {p1}, Lcom/jiliguala/niuwa/module/story/data/json/StorySummary;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/jiliguala/niuwa/module/story/data/Analytics$Properties;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/jiliguala/niuwa/module/story/data/Analytics$Properties;

    move-result-object v1

    const-string v2, "az_level"

    invoke-virtual {p1}, Lcom/jiliguala/niuwa/module/story/data/json/StorySummary;->getFAZLevel()C

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/jiliguala/niuwa/module/story/data/Analytics$Properties;->a(Ljava/lang/String;C)Lcom/jiliguala/niuwa/module/story/data/Analytics$Properties;

    move-result-object v1

    const-string v2, "read_to_me_type"

    .line 122
    invoke-virtual {v1, v2, p2}, Lcom/jiliguala/niuwa/module/story/data/Analytics$Properties;->a(Ljava/lang/String;Lcom/jiliguala/niuwa/module/story/data/Analytics$Propertyable;)Lcom/jiliguala/niuwa/module/story/data/Analytics$Properties;

    move-result-object v1

    .line 120
    invoke-direct {p0, v0, v1}, Lcom/jiliguala/niuwa/module/story/data/Analytics;->track(Ljava/lang/String;Lcom/jiliguala/niuwa/module/story/data/Analytics$Properties;)V

    .line 123
    return-void
.end method

.method public trackClosedFreemiumReminder()V
    .locals 1

    .prologue
    .line 144
    const-string v0, "Closed freemium reminder"

    invoke-direct {p0, v0}, Lcom/jiliguala/niuwa/module/story/data/Analytics;->track(Ljava/lang/String;)V

    .line 145
    return-void
.end method

.method public trackEnjoyingClosed()V
    .locals 1

    .prologue
    .line 156
    const-string v0, "EF - Closed"

    invoke-direct {p0, v0}, Lcom/jiliguala/niuwa/module/story/data/Analytics;->track(Ljava/lang/String;)V

    .line 157
    return-void
.end method

.method public trackEnjoyingContactUsTapped()V
    .locals 1

    .prologue
    .line 172
    const-string v0, "EF - Contact Us Tapped"

    invoke-direct {p0, v0}, Lcom/jiliguala/niuwa/module/story/data/Analytics;->track(Ljava/lang/String;)V

    .line 173
    return-void
.end method

.method public trackEnjoyingLoveItTapped()V
    .locals 1

    .prologue
    .line 160
    const-string v0, "EF - Love It Tapped"

    invoke-direct {p0, v0}, Lcom/jiliguala/niuwa/module/story/data/Analytics;->track(Ljava/lang/String;)V

    .line 161
    return-void
.end method

.method public trackEnjoyingNoTapped()V
    .locals 1

    .prologue
    .line 168
    const-string v0, "EF - No Tapped"

    invoke-direct {p0, v0}, Lcom/jiliguala/niuwa/module/story/data/Analytics;->track(Ljava/lang/String;)V

    .line 169
    return-void
.end method

.method public trackEnjoyingOkayTapped()V
    .locals 1

    .prologue
    .line 164
    const-string v0, "EF - Okay Tapped"

    invoke-direct {p0, v0}, Lcom/jiliguala/niuwa/module/story/data/Analytics;->track(Ljava/lang/String;)V

    .line 165
    return-void
.end method

.method public trackEnjoyingRateTapped()V
    .locals 1

    .prologue
    .line 176
    const-string v0, "EF - Rate Tapped"

    invoke-direct {p0, v0}, Lcom/jiliguala/niuwa/module/story/data/Analytics;->track(Ljava/lang/String;)V

    .line 177
    return-void
.end method

.method public trackReadFinish(Lcom/jiliguala/niuwa/module/story/data/json/StorySummary;)V
    .locals 4
    .param p1, "story"    # Lcom/jiliguala/niuwa/module/story/data/json/StorySummary;

    .prologue
    .line 130
    const-string v0, "Read - Finish"

    new-instance v1, Lcom/jiliguala/niuwa/module/story/data/Analytics$Properties;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/jiliguala/niuwa/module/story/data/Analytics$Properties;-><init>(Lcom/jiliguala/niuwa/module/story/data/Analytics;Lcom/jiliguala/niuwa/module/story/data/Analytics$1;)V

    const-string v2, "story_id"

    invoke-virtual {p1}, Lcom/jiliguala/niuwa/module/story/data/json/StorySummary;->get_id()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/jiliguala/niuwa/module/story/data/Analytics$Properties;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/jiliguala/niuwa/module/story/data/Analytics$Properties;

    move-result-object v1

    const-string v2, "title"

    invoke-virtual {p1}, Lcom/jiliguala/niuwa/module/story/data/json/StorySummary;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/jiliguala/niuwa/module/story/data/Analytics$Properties;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/jiliguala/niuwa/module/story/data/Analytics$Properties;

    move-result-object v1

    const-string v2, "az_level"

    invoke-virtual {p1}, Lcom/jiliguala/niuwa/module/story/data/json/StorySummary;->getFAZLevel()C

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/jiliguala/niuwa/module/story/data/Analytics$Properties;->a(Ljava/lang/String;C)Lcom/jiliguala/niuwa/module/story/data/Analytics$Properties;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/jiliguala/niuwa/module/story/data/Analytics;->track(Ljava/lang/String;Lcom/jiliguala/niuwa/module/story/data/Analytics$Properties;)V

    .line 131
    return-void
.end method

.method public trackReadMidpoint(Lcom/jiliguala/niuwa/module/story/data/json/StorySummary;)V
    .locals 4
    .param p1, "story"    # Lcom/jiliguala/niuwa/module/story/data/json/StorySummary;

    .prologue
    .line 126
    const-string v0, "Read - Midpoint"

    new-instance v1, Lcom/jiliguala/niuwa/module/story/data/Analytics$Properties;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/jiliguala/niuwa/module/story/data/Analytics$Properties;-><init>(Lcom/jiliguala/niuwa/module/story/data/Analytics;Lcom/jiliguala/niuwa/module/story/data/Analytics$1;)V

    const-string v2, "story_id"

    invoke-virtual {p1}, Lcom/jiliguala/niuwa/module/story/data/json/StorySummary;->get_id()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/jiliguala/niuwa/module/story/data/Analytics$Properties;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/jiliguala/niuwa/module/story/data/Analytics$Properties;

    move-result-object v1

    const-string v2, "title"

    invoke-virtual {p1}, Lcom/jiliguala/niuwa/module/story/data/json/StorySummary;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/jiliguala/niuwa/module/story/data/Analytics$Properties;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/jiliguala/niuwa/module/story/data/Analytics$Properties;

    move-result-object v1

    const-string v2, "az_level"

    invoke-virtual {p1}, Lcom/jiliguala/niuwa/module/story/data/json/StorySummary;->getFAZLevel()C

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/jiliguala/niuwa/module/story/data/Analytics$Properties;->a(Ljava/lang/String;C)Lcom/jiliguala/niuwa/module/story/data/Analytics$Properties;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/jiliguala/niuwa/module/story/data/Analytics;->track(Ljava/lang/String;Lcom/jiliguala/niuwa/module/story/data/Analytics$Properties;)V

    .line 127
    return-void
.end method

.method public trackReadStart(Lcom/jiliguala/niuwa/module/story/data/json/StorySummary;)V
    .locals 4
    .param p1, "story"    # Lcom/jiliguala/niuwa/module/story/data/json/StorySummary;

    .prologue
    .line 114
    const-string v0, "Read - Start"

    new-instance v1, Lcom/jiliguala/niuwa/module/story/data/Analytics$Properties;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/jiliguala/niuwa/module/story/data/Analytics$Properties;-><init>(Lcom/jiliguala/niuwa/module/story/data/Analytics;Lcom/jiliguala/niuwa/module/story/data/Analytics$1;)V

    const-string v2, "story_id"

    invoke-virtual {p1}, Lcom/jiliguala/niuwa/module/story/data/json/StorySummary;->get_id()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/jiliguala/niuwa/module/story/data/Analytics$Properties;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/jiliguala/niuwa/module/story/data/Analytics$Properties;

    move-result-object v1

    const-string v2, "title"

    invoke-virtual {p1}, Lcom/jiliguala/niuwa/module/story/data/json/StorySummary;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/jiliguala/niuwa/module/story/data/Analytics$Properties;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/jiliguala/niuwa/module/story/data/Analytics$Properties;

    move-result-object v1

    const-string v2, "az_level"

    invoke-virtual {p1}, Lcom/jiliguala/niuwa/module/story/data/json/StorySummary;->getFAZLevel()C

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/jiliguala/niuwa/module/story/data/Analytics$Properties;->a(Ljava/lang/String;C)Lcom/jiliguala/niuwa/module/story/data/Analytics$Properties;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/jiliguala/niuwa/module/story/data/Analytics;->track(Ljava/lang/String;Lcom/jiliguala/niuwa/module/story/data/Analytics$Properties;)V

    .line 115
    return-void
.end method

.method public trackReadStoryExit(Lcom/jiliguala/niuwa/module/story/data/json/StorySummary;I)V
    .locals 4
    .param p1, "story"    # Lcom/jiliguala/niuwa/module/story/data/json/StorySummary;
    .param p2, "percentage"    # I

    .prologue
    .line 134
    const-string v0, "Read - Story exit"

    new-instance v1, Lcom/jiliguala/niuwa/module/story/data/Analytics$Properties;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/jiliguala/niuwa/module/story/data/Analytics$Properties;-><init>(Lcom/jiliguala/niuwa/module/story/data/Analytics;Lcom/jiliguala/niuwa/module/story/data/Analytics$1;)V

    const-string v2, "story_id"

    .line 135
    invoke-virtual {p1}, Lcom/jiliguala/niuwa/module/story/data/json/StorySummary;->get_id()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/jiliguala/niuwa/module/story/data/Analytics$Properties;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/jiliguala/niuwa/module/story/data/Analytics$Properties;

    move-result-object v1

    const-string v2, "title"

    invoke-virtual {p1}, Lcom/jiliguala/niuwa/module/story/data/json/StorySummary;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/jiliguala/niuwa/module/story/data/Analytics$Properties;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/jiliguala/niuwa/module/story/data/Analytics$Properties;

    move-result-object v1

    const-string v2, "az_level"

    .line 136
    invoke-virtual {p1}, Lcom/jiliguala/niuwa/module/story/data/json/StorySummary;->getFAZLevel()C

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/jiliguala/niuwa/module/story/data/Analytics$Properties;->a(Ljava/lang/String;C)Lcom/jiliguala/niuwa/module/story/data/Analytics$Properties;

    move-result-object v1

    const-string v2, "percentage"

    invoke-virtual {v1, v2, p2}, Lcom/jiliguala/niuwa/module/story/data/Analytics$Properties;->a(Ljava/lang/String;I)Lcom/jiliguala/niuwa/module/story/data/Analytics$Properties;

    move-result-object v1

    .line 134
    invoke-direct {p0, v0, v1}, Lcom/jiliguala/niuwa/module/story/data/Analytics;->track(Ljava/lang/String;Lcom/jiliguala/niuwa/module/story/data/Analytics$Properties;)V

    .line 137
    return-void
.end method

.method public trackSharePassedParentalGate(Lcom/jiliguala/niuwa/module/story/data/Analytics$ShareType;Lcom/jiliguala/niuwa/module/story/data/json/StorySummary;I)V
    .locals 4
    .param p1, "type"    # Lcom/jiliguala/niuwa/module/story/data/Analytics$ShareType;
    .param p2, "story"    # Lcom/jiliguala/niuwa/module/story/data/json/StorySummary;
        .annotation build Lorg/b/a/e;
        .end annotation
    .end param
    .param p3, "percentage"    # I

    .prologue
    .line 190
    new-instance v1, Lcom/jiliguala/niuwa/module/story/data/Analytics$Properties;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/jiliguala/niuwa/module/story/data/Analytics$Properties;-><init>(Lcom/jiliguala/niuwa/module/story/data/Analytics;Lcom/jiliguala/niuwa/module/story/data/Analytics$1;)V

    const-string v2, "share_type"

    invoke-virtual {v1, v2, p1}, Lcom/jiliguala/niuwa/module/story/data/Analytics$Properties;->a(Ljava/lang/String;Lcom/jiliguala/niuwa/module/story/data/Analytics$Propertyable;)Lcom/jiliguala/niuwa/module/story/data/Analytics$Properties;

    move-result-object v0

    .line 191
    .local v0, "properties":Lcom/jiliguala/niuwa/module/story/data/Analytics$Properties;
    if-eqz p2, :cond_0

    .line 192
    const-string v1, "story_id"

    invoke-virtual {p2}, Lcom/jiliguala/niuwa/module/story/data/json/StorySummary;->get_id()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/jiliguala/niuwa/module/story/data/Analytics$Properties;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/jiliguala/niuwa/module/story/data/Analytics$Properties;

    move-result-object v1

    const-string v2, "title"

    invoke-virtual {p2}, Lcom/jiliguala/niuwa/module/story/data/json/StorySummary;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/jiliguala/niuwa/module/story/data/Analytics$Properties;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/jiliguala/niuwa/module/story/data/Analytics$Properties;

    move-result-object v1

    const-string v2, "az_level"

    invoke-virtual {p2}, Lcom/jiliguala/niuwa/module/story/data/json/StorySummary;->getFAZLevel()C

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/jiliguala/niuwa/module/story/data/Analytics$Properties;->a(Ljava/lang/String;C)Lcom/jiliguala/niuwa/module/story/data/Analytics$Properties;

    move-result-object v1

    const-string v2, "percentage"

    .line 193
    invoke-virtual {v1, v2, p3}, Lcom/jiliguala/niuwa/module/story/data/Analytics$Properties;->a(Ljava/lang/String;I)Lcom/jiliguala/niuwa/module/story/data/Analytics$Properties;

    .line 196
    :cond_0
    const-string v1, "Share - Passed Parental Gate"

    invoke-direct {p0, v1, v0}, Lcom/jiliguala/niuwa/module/story/data/Analytics;->track(Ljava/lang/String;Lcom/jiliguala/niuwa/module/story/data/Analytics$Properties;)V

    .line 197
    return-void
.end method

.method public trackShareStarted(Lcom/jiliguala/niuwa/module/story/data/Analytics$ShareType;Lcom/jiliguala/niuwa/module/story/data/json/StorySummary;I)V
    .locals 4
    .param p1, "type"    # Lcom/jiliguala/niuwa/module/story/data/Analytics$ShareType;
    .param p2, "story"    # Lcom/jiliguala/niuwa/module/story/data/json/StorySummary;
        .annotation build Lorg/b/a/e;
        .end annotation
    .end param
    .param p3, "percentage"    # I

    .prologue
    .line 180
    new-instance v1, Lcom/jiliguala/niuwa/module/story/data/Analytics$Properties;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/jiliguala/niuwa/module/story/data/Analytics$Properties;-><init>(Lcom/jiliguala/niuwa/module/story/data/Analytics;Lcom/jiliguala/niuwa/module/story/data/Analytics$1;)V

    const-string v2, "share_type"

    invoke-virtual {v1, v2, p1}, Lcom/jiliguala/niuwa/module/story/data/Analytics$Properties;->a(Ljava/lang/String;Lcom/jiliguala/niuwa/module/story/data/Analytics$Propertyable;)Lcom/jiliguala/niuwa/module/story/data/Analytics$Properties;

    move-result-object v0

    .line 181
    .local v0, "properties":Lcom/jiliguala/niuwa/module/story/data/Analytics$Properties;
    if-eqz p2, :cond_0

    .line 182
    const-string v1, "story_id"

    invoke-virtual {p2}, Lcom/jiliguala/niuwa/module/story/data/json/StorySummary;->get_id()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/jiliguala/niuwa/module/story/data/Analytics$Properties;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/jiliguala/niuwa/module/story/data/Analytics$Properties;

    move-result-object v1

    const-string v2, "title"

    invoke-virtual {p2}, Lcom/jiliguala/niuwa/module/story/data/json/StorySummary;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/jiliguala/niuwa/module/story/data/Analytics$Properties;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/jiliguala/niuwa/module/story/data/Analytics$Properties;

    move-result-object v1

    const-string v2, "az_level"

    invoke-virtual {p2}, Lcom/jiliguala/niuwa/module/story/data/json/StorySummary;->getFAZLevel()C

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/jiliguala/niuwa/module/story/data/Analytics$Properties;->a(Ljava/lang/String;C)Lcom/jiliguala/niuwa/module/story/data/Analytics$Properties;

    move-result-object v1

    const-string v2, "percentage"

    .line 183
    invoke-virtual {v1, v2, p3}, Lcom/jiliguala/niuwa/module/story/data/Analytics$Properties;->a(Ljava/lang/String;I)Lcom/jiliguala/niuwa/module/story/data/Analytics$Properties;

    .line 186
    :cond_0
    const-string v1, "Share - Started"

    invoke-direct {p0, v1, v0}, Lcom/jiliguala/niuwa/module/story/data/Analytics;->track(Ljava/lang/String;Lcom/jiliguala/niuwa/module/story/data/Analytics$Properties;)V

    .line 187
    return-void
.end method

.method public trackStorySelected(Ljava/lang/String;Ljava/lang/String;Lcom/jiliguala/niuwa/module/story/data/Analytics$StorySelectLocation;Ljava/lang/String;)V
    .locals 4
    .param p1, "storyId"    # Ljava/lang/String;
    .param p2, "title"    # Ljava/lang/String;
        .annotation build Lorg/b/a/e;
        .end annotation
    .end param
    .param p3, "selectLocation"    # Lcom/jiliguala/niuwa/module/story/data/Analytics$StorySelectLocation;
    .param p4, "land"    # Ljava/lang/String;
        .annotation build Lorg/b/a/e;
        .end annotation
    .end param

    .prologue
    const/4 v3, 0x0

    .line 102
    const-string v0, "Story selected"

    new-instance v1, Lcom/jiliguala/niuwa/module/story/data/Analytics$Properties;

    invoke-direct {v1, p0, v3}, Lcom/jiliguala/niuwa/module/story/data/Analytics$Properties;-><init>(Lcom/jiliguala/niuwa/module/story/data/Analytics;Lcom/jiliguala/niuwa/module/story/data/Analytics$1;)V

    const-string v2, "story_id"

    invoke-virtual {v1, v2, p1}, Lcom/jiliguala/niuwa/module/story/data/Analytics$Properties;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/jiliguala/niuwa/module/story/data/Analytics$Properties;

    move-result-object v1

    const-string v2, "title"

    invoke-virtual {v1, v2, p2}, Lcom/jiliguala/niuwa/module/story/data/Analytics$Properties;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/jiliguala/niuwa/module/story/data/Analytics$Properties;

    move-result-object v1

    const-string v2, "select_location"

    invoke-virtual {v1, v2, p3}, Lcom/jiliguala/niuwa/module/story/data/Analytics$Properties;->a(Ljava/lang/String;Lcom/jiliguala/niuwa/module/story/data/Analytics$Propertyable;)Lcom/jiliguala/niuwa/module/story/data/Analytics$Properties;

    move-result-object v1

    const-string v2, "land"

    .line 103
    invoke-virtual {v1, v2, p4}, Lcom/jiliguala/niuwa/module/story/data/Analytics$Properties;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/jiliguala/niuwa/module/story/data/Analytics$Properties;

    move-result-object v1

    .line 102
    invoke-direct {p0, v0, v1}, Lcom/jiliguala/niuwa/module/story/data/Analytics;->track(Ljava/lang/String;Lcom/jiliguala/niuwa/module/story/data/Analytics$Properties;)V

    .line 106
    sget-object v0, Lcom/jiliguala/niuwa/module/story/data/Analytics$StorySelectLocation;->FAVORITES:Lcom/jiliguala/niuwa/module/story/data/Analytics$StorySelectLocation;

    if-ne p3, v0, :cond_0

    .line 107
    const-string v0, "Clicked on Favorited book"

    new-instance v1, Lcom/jiliguala/niuwa/module/story/data/Analytics$Properties;

    invoke-direct {v1, p0, v3}, Lcom/jiliguala/niuwa/module/story/data/Analytics$Properties;-><init>(Lcom/jiliguala/niuwa/module/story/data/Analytics;Lcom/jiliguala/niuwa/module/story/data/Analytics$1;)V

    const-string v2, "story_id"

    invoke-virtual {v1, v2, p1}, Lcom/jiliguala/niuwa/module/story/data/Analytics$Properties;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/jiliguala/niuwa/module/story/data/Analytics$Properties;

    move-result-object v1

    const-string v2, "title"

    invoke-virtual {v1, v2, p2}, Lcom/jiliguala/niuwa/module/story/data/Analytics$Properties;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/jiliguala/niuwa/module/story/data/Analytics$Properties;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/jiliguala/niuwa/module/story/data/Analytics;->track(Ljava/lang/String;Lcom/jiliguala/niuwa/module/story/data/Analytics$Properties;)V

    .line 109
    :cond_0
    return-void
.end method

.method public trackViewedBookshelf(Ljava/lang/String;)V
    .locals 3
    .param p1, "land"    # Ljava/lang/String;

    .prologue
    .line 148
    const-string v0, "Viewed bookshelf"

    new-instance v1, Lcom/jiliguala/niuwa/module/story/data/Analytics$Properties;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/jiliguala/niuwa/module/story/data/Analytics$Properties;-><init>(Lcom/jiliguala/niuwa/module/story/data/Analytics;Lcom/jiliguala/niuwa/module/story/data/Analytics$1;)V

    const-string v2, "land"

    invoke-virtual {v1, v2, p1}, Lcom/jiliguala/niuwa/module/story/data/Analytics$Properties;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/jiliguala/niuwa/module/story/data/Analytics$Properties;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/jiliguala/niuwa/module/story/data/Analytics;->track(Ljava/lang/String;Lcom/jiliguala/niuwa/module/story/data/Analytics$Properties;)V

    .line 149
    return-void
.end method

.method public trackViewedFreemiumReminder()V
    .locals 1

    .prologue
    .line 140
    const-string v0, "Viewed freemium reminder"

    invoke-direct {p0, v0}, Lcom/jiliguala/niuwa/module/story/data/Analytics;->track(Ljava/lang/String;)V

    .line 141
    return-void
.end method

.method public updateSessionCounts(II)V
    .locals 0
    .param p1, "sessionCount"    # I
    .param p2, "sessionCountToday"    # I

    .prologue
    .line 85
    return-void
.end method
