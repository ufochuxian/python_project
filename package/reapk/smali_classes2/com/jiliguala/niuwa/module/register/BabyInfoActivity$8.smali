.class Lcom/jiliguala/niuwa/module/register/BabyInfoActivity$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/c/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;->addPicEventObserver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/c/c",
        "<",
        "Lcom/jiliguala/niuwa/logic/b/a/g;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;

    .prologue
    .line 354
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity$8;->a:Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/jiliguala/niuwa/logic/b/a/g;)V
    .locals 2
    .param p1, "pictureEvent"    # Lcom/jiliguala/niuwa/logic/b/a/g;

    .prologue
    .line 358
    iget v0, p1, Lcom/jiliguala/niuwa/logic/b/a/g;->a:I

    packed-switch v0, :pswitch_data_0

    .line 367
    :goto_0
    :pswitch_0
    return-void

    .line 360
    :pswitch_1
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity$8;->a:Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;

    invoke-virtual {p1}, Lcom/jiliguala/niuwa/logic/b/a/g;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;->onChildAvatarUpdate(Ljava/lang/String;)V

    goto :goto_0

    .line 358
    :pswitch_data_0
    .packed-switch 0x1010
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 354
    check-cast p1, Lcom/jiliguala/niuwa/logic/b/a/g;

    invoke-virtual {p0, p1}, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity$8;->a(Lcom/jiliguala/niuwa/logic/b/a/g;)V

    return-void
.end method