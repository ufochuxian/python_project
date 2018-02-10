.class Landroid/support/v4/view/m$c;
.super Landroid/support/v4/view/m$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "c"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Landroid/support/v4/view/m$b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/LayoutInflater;Landroid/support/v4/view/q;)V
    .locals 0
    .param p1, "layoutInflater"    # Landroid/view/LayoutInflater;
    .param p2, "factory"    # Landroid/support/v4/view/q;

    .prologue
    .line 48
    invoke-static {p1, p2}, Landroid/support/v4/view/o;->a(Landroid/view/LayoutInflater;Landroid/support/v4/view/q;)V

    .line 49
    return-void
.end method
