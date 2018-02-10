.class Lcom/jiliguala/niuwa/module/story/StoryActivity$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/story/StoryActivity;->onLiveDataFailed(Lcom/jiliguala/niuwa/module/story/data/live/LoadStoryOperation;Ljava/lang/Exception;)V
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
    .line 527
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/story/StoryActivity$3;->a:Lcom/jiliguala/niuwa/module/story/StoryActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "i"    # I

    .prologue
    .line 530
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/StoryActivity$3;->a:Lcom/jiliguala/niuwa/module/story/StoryActivity;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/story/StoryActivity$3;->a:Lcom/jiliguala/niuwa/module/story/StoryActivity;

    iget-object v1, v1, Lcom/jiliguala/niuwa/module/story/StoryActivity;->mStoryId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/story/StoryActivity;->loadStory(Ljava/lang/String;)V

    .line 531
    return-void
.end method
