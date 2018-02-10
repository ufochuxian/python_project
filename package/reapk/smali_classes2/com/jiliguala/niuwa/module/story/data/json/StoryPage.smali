.class public abstract Lcom/jiliguala/niuwa/module/story/data/json/StoryPage;
.super Lcom/jiliguala/niuwa/module/story/data/internal/PlayablePage;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/story/data/internal/PlayablePage;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getArtwork()Lcom/jiliguala/niuwa/module/story/data/internal/Asset;
    .annotation build Lorg/b/a/d;
    .end annotation
.end method

.method public abstract getChinese()Ljava/lang/String;
.end method

.method public abstract getSpotlightInstructions()[Lcom/jiliguala/niuwa/module/story/data/internal/SpotlightInstruction;
    .annotation build Lorg/b/a/d;
    .end annotation
.end method

.method public abstract getText()Ljava/lang/String;
    .annotation build Lorg/b/a/e;
    .end annotation
.end method
