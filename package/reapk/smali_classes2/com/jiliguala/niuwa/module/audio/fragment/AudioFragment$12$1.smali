.class Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$12$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jiliguala/niuwa/common/a/k$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$12;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/logic/r/a;

.field final synthetic b:Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$12;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$12;Lcom/jiliguala/niuwa/logic/r/a;)V
    .locals 0
    .param p1, "this$1"    # Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$12;

    .prologue
    .line 360
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$12$1;->b:Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$12;

    iput-object p2, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$12$1;->a:Lcom/jiliguala/niuwa/logic/r/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .prologue
    .line 371
    return-void
.end method

.method public a(I)V
    .locals 2
    .param p1, "selected"    # I

    .prologue
    .line 363
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$12$1;->a:Lcom/jiliguala/niuwa/logic/r/a;

    sget-object v1, Lcom/jiliguala/niuwa/logic/r/a;->b:[I

    aget v1, v1, p1

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/logic/r/a;->a(I)V

    .line 364
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$12$1;->a:Lcom/jiliguala/niuwa/logic/r/a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/logic/r/a;->a(Z)V

    .line 365
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$12$1;->b:Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$12;

    iget-object v0, v0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$12;->a:Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->access$1400(Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;)V

    .line 366
    return-void
.end method

.method public b()V
    .locals 0

    .prologue
    .line 376
    return-void
.end method
