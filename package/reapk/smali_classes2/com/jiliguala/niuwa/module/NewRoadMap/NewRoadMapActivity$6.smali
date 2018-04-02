.class Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->onRequestSuccess(Lcom/jiliguala/niuwa/logic/network/json/McTemplete;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;

    .prologue
    .line 782
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity$6;->a:Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 785
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity$6;->a:Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;

    iget-object v0, v0, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->mRecyclerVeiw:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity$6;->a:Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;

    iget-object v1, v1, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->mData:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->a(I)V

    .line 786
    return-void
.end method
