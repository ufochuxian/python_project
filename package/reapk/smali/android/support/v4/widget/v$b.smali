.class Landroid/support/v4/widget/v$b;
.super Landroid/support/v4/widget/v$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/widget/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Landroid/support/v4/widget/v$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Landroid/view/View$OnTouchListener;
    .locals 1
    .param p1, "popupMenu"    # Ljava/lang/Object;

    .prologue
    .line 49
    invoke-static {p1}, Landroid/support/v4/widget/w;->a(Ljava/lang/Object;)Landroid/view/View$OnTouchListener;

    move-result-object v0

    return-object v0
.end method
