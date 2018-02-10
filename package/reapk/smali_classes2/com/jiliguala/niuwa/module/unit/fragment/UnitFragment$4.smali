.class Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jiliguala/niuwa/a/b/c$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->showRecommendPop()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;

    .prologue
    .line 294
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment$4;->a:Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 297
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment$4;->a:Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->access$600(Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;)Lcom/jiliguala/niuwa/logic/network/json/RecommendCoursePopTemplete;

    move-result-object v1

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/RecommendCoursePopTemplete;->data:Lcom/jiliguala/niuwa/logic/network/json/RecommendCoursePopTemplete$Data;

    iget-object v0, v1, Lcom/jiliguala/niuwa/logic/network/json/RecommendCoursePopTemplete$Data;->target:Ljava/lang/String;

    .line 298
    .local v0, "target":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 299
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment$4;->a:Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/jiliguala/niuwa/logic/h/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 301
    :cond_0
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment$4;->a:Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->access$700(Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;)Lcom/jiliguala/niuwa/a/b/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/a/b/c;->b()V

    .line 302
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment$4;->a:Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->exitUnit()V

    .line 303
    return-void
.end method
