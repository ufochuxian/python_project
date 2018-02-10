.class Lcom/jiliguala/niuwa/module/register/ProfileCompletionActivity$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/c/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/register/ProfileCompletionActivity;->addPicEventObserver()V
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
.field final synthetic a:Lcom/jiliguala/niuwa/module/register/ProfileCompletionActivity;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/register/ProfileCompletionActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/register/ProfileCompletionActivity;

    .prologue
    .line 156
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/register/ProfileCompletionActivity$2;->a:Lcom/jiliguala/niuwa/module/register/ProfileCompletionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/jiliguala/niuwa/logic/b/a/g;)V
    .locals 2
    .param p1, "pictureEvent"    # Lcom/jiliguala/niuwa/logic/b/a/g;

    .prologue
    .line 160
    iget v0, p1, Lcom/jiliguala/niuwa/logic/b/a/g;->a:I

    sparse-switch v0, :sswitch_data_0

    .line 169
    :goto_0
    :sswitch_0
    return-void

    .line 166
    :sswitch_1
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/register/ProfileCompletionActivity$2;->a:Lcom/jiliguala/niuwa/module/register/ProfileCompletionActivity;

    invoke-virtual {p1}, Lcom/jiliguala/niuwa/logic/b/a/g;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/register/ProfileCompletionActivity;->onUserAvatarUpdate(Ljava/lang/String;)V

    goto :goto_0

    .line 160
    :sswitch_data_0
    .sparse-switch
        0x1009 -> :sswitch_1
        0x1010 -> :sswitch_0
        0x1011 -> :sswitch_0
    .end sparse-switch
.end method

.method public synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 156
    check-cast p1, Lcom/jiliguala/niuwa/logic/b/a/g;

    invoke-virtual {p0, p1}, Lcom/jiliguala/niuwa/module/register/ProfileCompletionActivity$2;->a(Lcom/jiliguala/niuwa/logic/b/a/g;)V

    return-void
.end method
