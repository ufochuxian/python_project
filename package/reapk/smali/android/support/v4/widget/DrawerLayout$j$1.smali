.class Landroid/support/v4/widget/DrawerLayout$j$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/widget/DrawerLayout$j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v4/widget/DrawerLayout$j;


# direct methods
.method constructor <init>(Landroid/support/v4/widget/DrawerLayout$j;)V
    .locals 0
    .param p1, "this$1"    # Landroid/support/v4/widget/DrawerLayout$j;

    .prologue
    .line 2057
    iput-object p1, p0, Landroid/support/v4/widget/DrawerLayout$j$1;->a:Landroid/support/v4/widget/DrawerLayout$j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 2059
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout$j$1;->a:Landroid/support/v4/widget/DrawerLayout$j;

    invoke-virtual {v0}, Landroid/support/v4/widget/DrawerLayout$j;->b()V

    .line 2060
    return-void
.end method
