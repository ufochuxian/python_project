.class Lcom/jiliguala/niuwa/module/qualitycourse/adapter/RecommendCategoryAdapter$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/qualitycourse/adapter/RecommendCategoryAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/jiliguala/niuwa/module/qualitycourse/adapter/RecommendCategoryAdapter;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/qualitycourse/adapter/RecommendCategoryAdapter;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/qualitycourse/adapter/RecommendCategoryAdapter;

    .prologue
    .line 88
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/qualitycourse/adapter/RecommendCategoryAdapter$1;->b:Lcom/jiliguala/niuwa/module/qualitycourse/adapter/RecommendCategoryAdapter;

    iput p2, p0, Lcom/jiliguala/niuwa/module/qualitycourse/adapter/RecommendCategoryAdapter$1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/qualitycourse/adapter/RecommendCategoryAdapter$1;->b:Lcom/jiliguala/niuwa/module/qualitycourse/adapter/RecommendCategoryAdapter;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/qualitycourse/adapter/RecommendCategoryAdapter;->access$000(Lcom/jiliguala/niuwa/module/qualitycourse/adapter/RecommendCategoryAdapter;)Lcom/jiliguala/niuwa/common/util/xutils/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/util/xutils/c;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    :goto_0
    return-void

    .line 94
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/qualitycourse/adapter/RecommendCategoryAdapter$1;->b:Lcom/jiliguala/niuwa/module/qualitycourse/adapter/RecommendCategoryAdapter;

    iget v1, p0, Lcom/jiliguala/niuwa/module/qualitycourse/adapter/RecommendCategoryAdapter$1;->a:I

    invoke-static {v0, v1}, Lcom/jiliguala/niuwa/module/qualitycourse/adapter/RecommendCategoryAdapter;->access$100(Lcom/jiliguala/niuwa/module/qualitycourse/adapter/RecommendCategoryAdapter;I)V

    goto :goto_0
.end method
