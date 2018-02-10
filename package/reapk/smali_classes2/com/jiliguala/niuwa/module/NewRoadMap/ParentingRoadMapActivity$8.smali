.class Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->checkShowAnim(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;Landroid/view/View;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;

    .prologue
    .line 1340
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity$8;->b:Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;

    iput-object p2, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity$8;->a:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1343
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity$8;->b:Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity$8;->a:Landroid/view/View;

    invoke-static {v0, v1}, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->access$1600(Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;Landroid/view/View;)V

    .line 1344
    return-void
.end method
