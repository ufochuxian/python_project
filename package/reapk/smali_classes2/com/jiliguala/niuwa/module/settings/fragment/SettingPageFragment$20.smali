.class Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment$20;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/c/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->initUIComponent(Landroid/view/View;)V
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
        "Ljava/lang/Void;",
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
    .line 571
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment$20;->a:Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Void;)V
    .locals 2
    .param p1, "aVoid"    # Ljava/lang/Void;

    .prologue
    .line 574
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment$20;->a:Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment$20;->a:Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->access$700(Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;)Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->access$800(Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;Landroid/view/View;)V

    .line 575
    return-void
.end method

.method public synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 571
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment$20;->a(Ljava/lang/Void;)V

    return-void
.end method
