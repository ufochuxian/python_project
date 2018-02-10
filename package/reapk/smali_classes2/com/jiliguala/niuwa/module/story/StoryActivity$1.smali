.class Lcom/jiliguala/niuwa/module/story/StoryActivity$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/story/StoryActivity;->onNewIntent(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/module/story/StoryActivity;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/story/StoryActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/story/StoryActivity;

    .prologue
    .line 310
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/story/StoryActivity$1;->a:Lcom/jiliguala/niuwa/module/story/StoryActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 313
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/StoryActivity$1;->a:Lcom/jiliguala/niuwa/module/story/StoryActivity;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/story/StoryActivity$1;->a:Lcom/jiliguala/niuwa/module/story/StoryActivity;

    iget-object v1, v1, Lcom/jiliguala/niuwa/module/story/StoryActivity;->mStoryId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/story/StoryActivity;->loadStory(Ljava/lang/String;)V

    .line 314
    return-void
.end method
