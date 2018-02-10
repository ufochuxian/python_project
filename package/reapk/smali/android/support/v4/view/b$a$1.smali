.class Landroid/support/v4/view/b$a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/view/c$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/view/b$a;->a(Landroid/support/v4/view/b;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v4/view/b;

.field final synthetic b:Landroid/support/v4/view/b$a;


# direct methods
.method constructor <init>(Landroid/support/v4/view/b$a;Landroid/support/v4/view/b;)V
    .locals 0
    .param p1, "this$0"    # Landroid/support/v4/view/b$a;

    .prologue
    .line 141
    iput-object p1, p0, Landroid/support/v4/view/b$a$1;->b:Landroid/support/v4/view/b$a;

    iput-object p2, p0, Landroid/support/v4/view/b$a$1;->a:Landroid/support/v4/view/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;I)V
    .locals 1
    .param p1, "host"    # Landroid/view/View;
    .param p2, "eventType"    # I

    .prologue
    .line 172
    iget-object v0, p0, Landroid/support/v4/view/b$a$1;->a:Landroid/support/v4/view/b;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/view/b;->a(Landroid/view/View;I)V

    .line 173
    return-void
.end method

.method public a(Landroid/view/View;Ljava/lang/Object;)V
    .locals 2
    .param p1, "host"    # Landroid/view/View;
    .param p2, "info"    # Ljava/lang/Object;

    .prologue
    .line 155
    iget-object v0, p0, Landroid/support/v4/view/b$a$1;->a:Landroid/support/v4/view/b;

    new-instance v1, Landroid/support/v4/view/a/h;

    invoke-direct {v1, p2}, Landroid/support/v4/view/a/h;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, p1, v1}, Landroid/support/v4/view/b;->a(Landroid/view/View;Landroid/support/v4/view/a/h;)V

    .line 157
    return-void
.end method

.method public a(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1
    .param p1, "host"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 145
    iget-object v0, p0, Landroid/support/v4/view/b$a$1;->a:Landroid/support/v4/view/b;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/view/b;->b(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    return v0
.end method

.method public a(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1
    .param p1, "host"    # Landroid/view/ViewGroup;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 167
    iget-object v0, p0, Landroid/support/v4/view/b$a$1;->a:Landroid/support/v4/view/b;

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v4/view/b;->a(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    return v0
.end method

.method public b(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1, "host"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 150
    iget-object v0, p0, Landroid/support/v4/view/b$a$1;->a:Landroid/support/v4/view/b;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/view/b;->d(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 151
    return-void
.end method

.method public c(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1, "host"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 161
    iget-object v0, p0, Landroid/support/v4/view/b$a$1;->a:Landroid/support/v4/view/b;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/view/b;->c(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 162
    return-void
.end method

.method public d(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1, "host"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 177
    iget-object v0, p0, Landroid/support/v4/view/b$a$1;->a:Landroid/support/v4/view/b;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/view/b;->a(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 178
    return-void
.end method
