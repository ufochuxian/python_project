.class Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->onRequestSuccess(Lcom/jiliguala/niuwa/logic/network/json/McTemplete;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;

    .prologue
    .line 1042
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity$6;->a:Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1045
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity$6;->a:Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;

    iget-object v0, v0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mRecyclerVeiw:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity$6;->a:Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->access$1400(Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->a(I)V

    .line 1046
    return-void
.end method
