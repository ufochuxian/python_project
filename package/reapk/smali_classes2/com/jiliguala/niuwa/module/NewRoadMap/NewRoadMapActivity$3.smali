.class Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->addFootView()V
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
    .line 395
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity$3;->a:Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 398
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity$3;->a:Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;

    const-string v1, "Upgrade"

    invoke-static {v0, v1}, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->access$200(Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;Ljava/lang/String;)V

    .line 399
    return-void
.end method