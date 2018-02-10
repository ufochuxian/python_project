.class Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->showData(Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean$Curatedentry$Content;

.field final synthetic c:Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;ILcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean$Curatedentry$Content;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;

    .prologue
    .line 847
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment$4;->c:Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;

    iput p2, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment$4;->a:I

    iput-object p3, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment$4;->b:Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean$Curatedentry$Content;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 850
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment$4;->c:Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;

    iget v1, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment$4;->a:I

    invoke-static {v0, v1}, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->access$200(Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;I)V

    .line 851
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment$4;->c:Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment$4;->b:Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean$Curatedentry$Content;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean$Curatedentry$Content;->tgt:Ljava/lang/String;

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment$4;->c:Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->getFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/jiliguala/niuwa/logic/h/a;->a(Landroid/content/Context;Ljava/lang/String;Landroid/support/v4/app/ag;)V

    .line 852
    return-void
.end method
