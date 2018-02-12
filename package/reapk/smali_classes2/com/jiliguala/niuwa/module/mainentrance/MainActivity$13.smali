.class Lcom/jiliguala/niuwa/module/mainentrance/MainActivity$13;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/TabHost$OnTabChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->initHomeUI()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;

    .prologue
    .line 728
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity$13;->a:Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTabChanged(Ljava/lang/String;)V
    .locals 6
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 732
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 733
    .local v0, "pos":I
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity$13;->a:Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;

    invoke-static {v1, v0}, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->access$902(Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;I)I

    .line 734
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity$13;->a:Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;

    iget-object v1, v1, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->mTabHost:Lcom/jiliguala/niuwa/common/widget/tabhost/FragmentTabHost;

    new-instance v2, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity$13$1;

    invoke-direct {v2, p0, v0}, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity$13$1;-><init>(Lcom/jiliguala/niuwa/module/mainentrance/MainActivity$13;I)V

    const-wide/16 v4, 0x1f4

    invoke-virtual {v1, v2, v4, v5}, Lcom/jiliguala/niuwa/common/widget/tabhost/FragmentTabHost;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 745
    .end local v0    # "pos":I
    :goto_0
    return-void

    .line 742
    :catch_0
    move-exception v1

    goto :goto_0
.end method
