.class Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment$12;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/c/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->addPicEventObserver()V
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
.field final synthetic a:Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;

    .prologue
    .line 391
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment$12;->a:Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/jiliguala/niuwa/logic/b/a/g;)V
    .locals 3
    .param p1, "pictureEvent"    # Lcom/jiliguala/niuwa/logic/b/a/g;

    .prologue
    .line 395
    iget v0, p1, Lcom/jiliguala/niuwa/logic/b/a/g;->a:I

    packed-switch v0, :pswitch_data_0

    .line 404
    :goto_0
    :pswitch_0
    return-void

    .line 399
    :pswitch_1
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment$12;->a:Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;

    invoke-virtual {p1}, Lcom/jiliguala/niuwa/logic/b/a/g;->a()I

    move-result v1

    invoke-virtual {p1}, Lcom/jiliguala/niuwa/logic/b/a/g;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->onNormalPicUpdate(ILjava/lang/String;)V

    goto :goto_0

    .line 395
    :pswitch_data_0
    .packed-switch 0x1010
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 391
    check-cast p1, Lcom/jiliguala/niuwa/logic/b/a/g;

    invoke-virtual {p0, p1}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment$12;->a(Lcom/jiliguala/niuwa/logic/b/a/g;)V

    return-void
.end method
