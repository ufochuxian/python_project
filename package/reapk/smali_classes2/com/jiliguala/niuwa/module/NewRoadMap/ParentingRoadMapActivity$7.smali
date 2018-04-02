.class Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->addFootView()V
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
    .line 1154
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity$7;->a:Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1157
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity$7;->a:Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;

    const-string v1, "Upgrade"

    invoke-static {v0, v1}, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->access$1500(Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;Ljava/lang/String;)V

    .line 1158
    return-void
.end method
