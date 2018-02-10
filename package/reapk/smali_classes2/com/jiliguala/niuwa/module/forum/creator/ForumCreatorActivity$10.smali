.class Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorActivity$10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorActivity;->updateFragmentThumb(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorActivity;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorActivity;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorActivity;

    .prologue
    .line 377
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorActivity$10;->b:Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorActivity;

    iput-object p2, p0, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorActivity$10;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 380
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorActivity$10;->b:Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorActivity;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorActivity;->access$100(Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorActivity;)Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;

    move-result-object v0

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorActivity$10;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;->updateThumb(Ljava/lang/String;)V

    .line 381
    return-void
.end method
