.class Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;->onOfflineError()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;

    .prologue
    .line 601
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager$3;->a:Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "i"    # I

    .prologue
    .line 604
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager$3;->a:Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;->access$200(Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;Z)V

    .line 605
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager$3;->a:Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;->access$500(Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;)Lcom/jiliguala/niuwa/MyApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/MyApplication;->getOfflineManager()Lcom/jiliguala/niuwa/module/story/data/OfflineManager;

    move-result-object v0

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager$3;->a:Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;->access$300(Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;)Lcom/jiliguala/niuwa/module/story/data/json/StoryResponse;

    move-result-object v1

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager$3;->a:Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;

    invoke-static {v2}, Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;->access$400(Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;)Lcom/jiliguala/niuwa/module/story/StoryBaseActivity;

    move-result-object v2

    new-instance v3, Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager$3$1;

    invoke-direct {v3, p0}, Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager$3$1;-><init>(Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager$3;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/jiliguala/niuwa/module/story/data/OfflineManager;->makeAvailableOffline(Lcom/jiliguala/niuwa/module/story/data/json/StoryResponse;Landroid/content/Context;Ljava/lang/Runnable;)V

    .line 611
    return-void
.end method
