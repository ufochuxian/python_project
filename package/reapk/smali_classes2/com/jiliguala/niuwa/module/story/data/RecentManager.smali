.class public Lcom/jiliguala/niuwa/module/story/data/RecentManager;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final mStore:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    invoke-static {p1}, Lcom/jiliguala/niuwa/module/story/data/SessionManager;->getStore(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/story/data/RecentManager;->mStore:Landroid/content/SharedPreferences;

    .line 23
    return-void
.end method

.method private persistRecentStories(Lcom/jiliguala/niuwa/module/story/data/internal/RecentStories;)V
    .locals 3
    .param p1, "recentStories"    # Lcom/jiliguala/niuwa/module/story/data/internal/RecentStories;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/data/RecentManager;->mStore:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "Ll"

    invoke-virtual {p1}, Lcom/jiliguala/niuwa/module/story/data/internal/RecentStories;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 41
    return-void
.end method

.method private retrieveRecentStories()Lcom/jiliguala/niuwa/module/story/data/internal/RecentStories;
    .locals 4

    .prologue
    .line 36
    new-instance v0, Lcom/jiliguala/niuwa/module/story/data/internal/RecentStories;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/story/data/RecentManager;->mStore:Landroid/content/SharedPreferences;

    const-string v2, "Ll"

    const-string v3, "[]"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/jiliguala/niuwa/module/story/data/internal/RecentStories;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public getStories()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/jiliguala/niuwa/module/story/data/internal/StoryInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/story/data/RecentManager;->retrieveRecentStories()Lcom/jiliguala/niuwa/module/story/data/internal/RecentStories;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/story/data/internal/RecentStories;->getStories()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public pushStory(Lcom/jiliguala/niuwa/module/story/data/internal/StoryInfo;)V
    .locals 1
    .param p1, "story"    # Lcom/jiliguala/niuwa/module/story/data/internal/StoryInfo;

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/story/data/RecentManager;->retrieveRecentStories()Lcom/jiliguala/niuwa/module/story/data/internal/RecentStories;

    move-result-object v0

    .line 31
    .local v0, "recentStories":Lcom/jiliguala/niuwa/module/story/data/internal/RecentStories;
    invoke-virtual {v0, p1}, Lcom/jiliguala/niuwa/module/story/data/internal/RecentStories;->pushStory(Lcom/jiliguala/niuwa/module/story/data/internal/StoryInfo;)V

    .line 32
    invoke-direct {p0, v0}, Lcom/jiliguala/niuwa/module/story/data/RecentManager;->persistRecentStories(Lcom/jiliguala/niuwa/module/story/data/internal/RecentStories;)V

    .line 33
    return-void
.end method

.method public updateStory(Lcom/jiliguala/niuwa/module/story/data/internal/StoryInfo;)V
    .locals 1
    .param p1, "story"    # Lcom/jiliguala/niuwa/module/story/data/internal/StoryInfo;

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/story/data/RecentManager;->retrieveRecentStories()Lcom/jiliguala/niuwa/module/story/data/internal/RecentStories;

    move-result-object v0

    .line 45
    .local v0, "recentStories":Lcom/jiliguala/niuwa/module/story/data/internal/RecentStories;
    invoke-virtual {v0, p1}, Lcom/jiliguala/niuwa/module/story/data/internal/RecentStories;->updateStory(Lcom/jiliguala/niuwa/module/story/data/internal/StoryInfo;)V

    .line 46
    invoke-direct {p0, v0}, Lcom/jiliguala/niuwa/module/story/data/RecentManager;->persistRecentStories(Lcom/jiliguala/niuwa/module/story/data/internal/RecentStories;)V

    .line 47
    return-void
.end method
