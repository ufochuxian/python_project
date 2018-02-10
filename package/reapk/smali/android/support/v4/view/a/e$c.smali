.class Landroid/support/v4/view/a/e$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/view/a/e$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/a/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "c"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/support/v4/view/a/e$e;)Landroid/support/v4/view/a/f$b;
    .locals 1
    .param p1, "listener"    # Landroid/support/v4/view/a/e$e;

    .prologue
    .line 60
    const/4 v0, 0x0

    return-object v0
.end method

.method public a(Landroid/support/v4/view/a/e$g;)Landroid/support/v4/view/a/g$b;
    .locals 1
    .param p1, "listener"    # Landroid/support/v4/view/a/e$g;

    .prologue
    .line 95
    const/4 v0, 0x0

    return-object v0
.end method

.method public a(Landroid/view/accessibility/AccessibilityManager;)Ljava/util/List;
    .locals 1
    .param p1, "manager"    # Landroid/view/accessibility/AccessibilityManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/accessibility/AccessibilityManager;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/accessibilityservice/AccessibilityServiceInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 84
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/view/accessibility/AccessibilityManager;I)Ljava/util/List;
    .locals 1
    .param p1, "manager"    # Landroid/view/accessibility/AccessibilityManager;
    .param p2, "feedbackTypeFlags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/accessibility/AccessibilityManager;",
            "I)",
            "Ljava/util/List",
            "<",
            "Landroid/accessibilityservice/AccessibilityServiceInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 78
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/view/accessibility/AccessibilityManager;Landroid/support/v4/view/a/e$e;)Z
    .locals 1
    .param p1, "manager"    # Landroid/view/accessibility/AccessibilityManager;
    .param p2, "listener"    # Landroid/support/v4/view/a/e$e;

    .prologue
    .line 66
    const/4 v0, 0x0

    return v0
.end method

.method public a(Landroid/view/accessibility/AccessibilityManager;Landroid/support/v4/view/a/e$g;)Z
    .locals 1
    .param p1, "manager"    # Landroid/view/accessibility/AccessibilityManager;
    .param p2, "listener"    # Landroid/support/v4/view/a/e$g;

    .prologue
    .line 101
    const/4 v0, 0x0

    return v0
.end method

.method public b(Landroid/view/accessibility/AccessibilityManager;)Z
    .locals 1
    .param p1, "manager"    # Landroid/view/accessibility/AccessibilityManager;

    .prologue
    .line 89
    const/4 v0, 0x0

    return v0
.end method

.method public b(Landroid/view/accessibility/AccessibilityManager;Landroid/support/v4/view/a/e$e;)Z
    .locals 1
    .param p1, "manager"    # Landroid/view/accessibility/AccessibilityManager;
    .param p2, "listener"    # Landroid/support/v4/view/a/e$e;

    .prologue
    .line 72
    const/4 v0, 0x0

    return v0
.end method

.method public b(Landroid/view/accessibility/AccessibilityManager;Landroid/support/v4/view/a/e$g;)Z
    .locals 1
    .param p1, "manager"    # Landroid/view/accessibility/AccessibilityManager;
    .param p2, "listener"    # Landroid/support/v4/view/a/e$g;

    .prologue
    .line 107
    const/4 v0, 0x0

    return v0
.end method
