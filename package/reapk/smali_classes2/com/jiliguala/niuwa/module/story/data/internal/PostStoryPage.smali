.class public Lcom/jiliguala/niuwa/module/story/data/internal/PostStoryPage;
.super Lcom/jiliguala/niuwa/module/story/data/internal/Page;
.source "SourceFile"


# instance fields
.field private mStory:Lcom/jiliguala/niuwa/module/story/data/json/Story;


# direct methods
.method public constructor <init>(Lcom/jiliguala/niuwa/module/story/data/json/Story;)V
    .locals 0
    .param p1, "story"    # Lcom/jiliguala/niuwa/module/story/data/json/Story;

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/story/data/internal/Page;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/story/data/internal/PostStoryPage;->mStory:Lcom/jiliguala/niuwa/module/story/data/json/Story;

    .line 13
    return-void
.end method


# virtual methods
.method public getStory()Lcom/jiliguala/niuwa/module/story/data/json/Story;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/data/internal/PostStoryPage;->mStory:Lcom/jiliguala/niuwa/module/story/data/json/Story;

    return-object v0
.end method
