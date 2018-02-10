.class Landroid/support/v7/widget/z$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v7/widget/z;->c()I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v7/widget/z;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/z;)V
    .locals 0
    .param p1, "this$0"    # Landroid/support/v7/widget/z;

    .prologue
    .line 1134
    iput-object p1, p0, Landroid/support/v7/widget/z$2;->a:Landroid/support/v7/widget/z;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1138
    iget-object v1, p0, Landroid/support/v7/widget/z$2;->a:Landroid/support/v7/widget/z;

    invoke-virtual {v1}, Landroid/support/v7/widget/z;->m()Landroid/view/View;

    move-result-object v0

    .line 1139
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1140
    iget-object v1, p0, Landroid/support/v7/widget/z$2;->a:Landroid/support/v7/widget/z;

    invoke-virtual {v1}, Landroid/support/v7/widget/z;->a()V

    .line 1142
    :cond_0
    return-void
.end method
