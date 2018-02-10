.class Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorActivity$9$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorActivity$9;->onError(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorActivity$9;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorActivity$9;)V
    .locals 0
    .param p1, "this$1"    # Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorActivity$9;

    .prologue
    .line 364
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorActivity$9$1;->a:Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorActivity$9;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 367
    const v0, 0x7f0f015e

    invoke-static {v0}, Lcom/jiliguala/niuwa/services/SystemMsgService;->a(I)V

    .line 368
    return-void
.end method
