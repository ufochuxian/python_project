.class Lcom/jiliguala/niuwa/module/mainentrance/MainActivity$13$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/mainentrance/MainActivity$13;->onTabChanged(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/jiliguala/niuwa/module/mainentrance/MainActivity$13;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/mainentrance/MainActivity$13;I)V
    .locals 0
    .param p1, "this$1"    # Lcom/jiliguala/niuwa/module/mainentrance/MainActivity$13;

    .prologue
    .line 736
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity$13$1;->b:Lcom/jiliguala/niuwa/module/mainentrance/MainActivity$13;

    iput p2, p0, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity$13$1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 739
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity$13$1;->b:Lcom/jiliguala/niuwa/module/mainentrance/MainActivity$13;

    iget-object v0, v0, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity$13;->a:Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;

    iget-object v0, v0, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->mTabHost:Lcom/jiliguala/niuwa/common/widget/tabhost/FragmentTabHost;

    invoke-virtual {v0, p0}, Lcom/jiliguala/niuwa/common/widget/tabhost/FragmentTabHost;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 740
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity$13$1;->b:Lcom/jiliguala/niuwa/module/mainentrance/MainActivity$13;

    iget-object v0, v0, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity$13;->a:Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;

    iget v1, p0, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity$13$1;->a:I

    invoke-static {v0, v1}, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->access$1000(Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;I)V

    .line 741
    return-void
.end method
