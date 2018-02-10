.class Lcom/jiliguala/niuwa/module/message/MessageCenterActivity$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiliguala/niuwa/module/message/MessageCenterActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/module/message/MessageCenterActivity;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/message/MessageCenterActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/message/MessageCenterActivity;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/message/MessageCenterActivity$1;->a:Lcom/jiliguala/niuwa/module/message/MessageCenterActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 43
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 48
    :goto_0
    return-void

    .line 45
    :pswitch_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/message/MessageCenterActivity$1;->a:Lcom/jiliguala/niuwa/module/message/MessageCenterActivity;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/message/MessageCenterActivity;->onBackPressed()V

    goto :goto_0

    .line 43
    :pswitch_data_0
    .packed-switch 0x7f090014
        :pswitch_0
    .end packed-switch
.end method
