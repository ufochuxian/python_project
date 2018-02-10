.class Lcom/jiliguala/niuwa/module/story/StoryBaseActivity$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/story/StoryBaseActivity;->openStory(Ljava/lang/String;Ljava/lang/String;Lcom/jiliguala/niuwa/module/story/data/Analytics$StorySelectLocation;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/jiliguala/niuwa/module/story/data/Analytics$StorySelectLocation;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Lcom/jiliguala/niuwa/module/story/StoryBaseActivity;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/story/StoryBaseActivity;Ljava/lang/String;Ljava/lang/String;Lcom/jiliguala/niuwa/module/story/data/Analytics$StorySelectLocation;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/story/StoryBaseActivity;

    .prologue
    .line 117
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/story/StoryBaseActivity$1;->e:Lcom/jiliguala/niuwa/module/story/StoryBaseActivity;

    iput-object p2, p0, Lcom/jiliguala/niuwa/module/story/StoryBaseActivity$1;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/jiliguala/niuwa/module/story/StoryBaseActivity$1;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/jiliguala/niuwa/module/story/StoryBaseActivity$1;->c:Lcom/jiliguala/niuwa/module/story/data/Analytics$StorySelectLocation;

    iput-object p5, p0, Lcom/jiliguala/niuwa/module/story/StoryBaseActivity$1;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 120
    sget-object v1, Lcom/jiliguala/niuwa/module/story/data/Analytics;->INSTANCE:Lcom/jiliguala/niuwa/module/story/data/Analytics;

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/story/StoryBaseActivity$1;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/story/StoryBaseActivity$1;->b:Ljava/lang/String;

    iget-object v4, p0, Lcom/jiliguala/niuwa/module/story/StoryBaseActivity$1;->c:Lcom/jiliguala/niuwa/module/story/data/Analytics$StorySelectLocation;

    iget-object v5, p0, Lcom/jiliguala/niuwa/module/story/StoryBaseActivity$1;->d:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/jiliguala/niuwa/module/story/data/Analytics;->trackStorySelected(Ljava/lang/String;Ljava/lang/String;Lcom/jiliguala/niuwa/module/story/data/Analytics$StorySelectLocation;Ljava/lang/String;)V

    .line 122
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/story/StoryBaseActivity$1;->e:Lcom/jiliguala/niuwa/module/story/StoryBaseActivity;

    const-class v2, Lcom/jiliguala/niuwa/module/story/StoryActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 123
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "rid"

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/story/StoryBaseActivity$1;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 125
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 127
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/story/StoryBaseActivity$1;->e:Lcom/jiliguala/niuwa/module/story/StoryBaseActivity;

    const/16 v2, 0x2288

    invoke-virtual {v1, v0, v2}, Lcom/jiliguala/niuwa/module/story/StoryBaseActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 128
    return-void
.end method
