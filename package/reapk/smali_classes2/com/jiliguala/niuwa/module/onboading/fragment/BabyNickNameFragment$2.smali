.class Lcom/jiliguala/niuwa/module/onboading/fragment/BabyNickNameFragment$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/onboading/fragment/BabyNickNameFragment;->setViewListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/module/onboading/fragment/BabyNickNameFragment;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/onboading/fragment/BabyNickNameFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/onboading/fragment/BabyNickNameFragment;

    .prologue
    .line 142
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/BabyNickNameFragment$2;->a:Lcom/jiliguala/niuwa/module/onboading/fragment/BabyNickNameFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 2

    .prologue
    .line 145
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/BabyNickNameFragment$2;->a:Lcom/jiliguala/niuwa/module/onboading/fragment/BabyNickNameFragment;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/onboading/fragment/BabyNickNameFragment;->access$300(Lcom/jiliguala/niuwa/module/onboading/fragment/BabyNickNameFragment;)Landroid/widget/ScrollView;

    move-result-object v0

    const/16 v1, 0x82

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->fullScroll(I)Z

    .line 147
    return-void
.end method
