.class Landroid/support/v4/widget/x$a;
.super Landroid/support/v4/widget/x$d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/widget/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 133
    invoke-direct {p0}, Landroid/support/v4/widget/x$d;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/widget/PopupWindow;Z)V
    .locals 0
    .param p1, "popupWindow"    # Landroid/widget/PopupWindow;
    .param p2, "overlapAnchor"    # Z

    .prologue
    .line 136
    invoke-static {p1, p2}, Landroid/support/v4/widget/y;->a(Landroid/widget/PopupWindow;Z)V

    .line 137
    return-void
.end method

.method public a(Landroid/widget/PopupWindow;)Z
    .locals 1
    .param p1, "popupWindow"    # Landroid/widget/PopupWindow;

    .prologue
    .line 141
    invoke-static {p1}, Landroid/support/v4/widget/y;->a(Landroid/widget/PopupWindow;)Z

    move-result v0

    return v0
.end method
