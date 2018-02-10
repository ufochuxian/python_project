.class Landroid/support/v4/widget/x$b;
.super Landroid/support/v4/widget/x$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/widget/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 145
    invoke-direct {p0}, Landroid/support/v4/widget/x$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/widget/PopupWindow;I)V
    .locals 0
    .param p1, "popupWindow"    # Landroid/widget/PopupWindow;
    .param p2, "layoutType"    # I

    .prologue
    .line 158
    invoke-static {p1, p2}, Landroid/support/v4/widget/z;->a(Landroid/widget/PopupWindow;I)V

    .line 159
    return-void
.end method

.method public a(Landroid/widget/PopupWindow;Z)V
    .locals 0
    .param p1, "popupWindow"    # Landroid/widget/PopupWindow;
    .param p2, "overlapAnchor"    # Z

    .prologue
    .line 148
    invoke-static {p1, p2}, Landroid/support/v4/widget/z;->a(Landroid/widget/PopupWindow;Z)V

    .line 149
    return-void
.end method

.method public a(Landroid/widget/PopupWindow;)Z
    .locals 1
    .param p1, "popupWindow"    # Landroid/widget/PopupWindow;

    .prologue
    .line 153
    invoke-static {p1}, Landroid/support/v4/widget/z;->a(Landroid/widget/PopupWindow;)Z

    move-result v0

    return v0
.end method

.method public b(Landroid/widget/PopupWindow;)I
    .locals 1
    .param p1, "popupWindow"    # Landroid/widget/PopupWindow;

    .prologue
    .line 163
    invoke-static {p1}, Landroid/support/v4/widget/z;->b(Landroid/widget/PopupWindow;)I

    move-result v0

    return v0
.end method
