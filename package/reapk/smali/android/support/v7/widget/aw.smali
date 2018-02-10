.class Landroid/support/v7/widget/aw;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/widget/aw$b;,
        Landroid/support/v7/widget/aw$a;,
        Landroid/support/v7/widget/aw$c;
    }
.end annotation


# static fields
.field static final a:I = 0x1

.field static final b:I = 0x2

.field static final c:I = 0x4

.field static final d:I = 0x0

.field static final e:I = 0x1

.field static final f:I = 0x2

.field static final g:I = 0x4

.field static final h:I = 0x4

.field static final i:I = 0x10

.field static final j:I = 0x20

.field static final k:I = 0x40

.field static final l:I = 0x8

.field static final m:I = 0x100

.field static final n:I = 0x200

.field static final o:I = 0x400

.field static final p:I = 0xc

.field static final q:I = 0x1000

.field static final r:I = 0x2000

.field static final s:I = 0x4000

.field static final t:I = 0x7


# instance fields
.field final u:Landroid/support/v7/widget/aw$b;

.field v:Landroid/support/v7/widget/aw$a;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/aw$b;)V
    .locals 1
    .param p1, "callback"    # Landroid/support/v7/widget/aw$b;

    .prologue
    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 131
    iput-object p1, p0, Landroid/support/v7/widget/aw;->u:Landroid/support/v7/widget/aw$b;

    .line 132
    new-instance v0, Landroid/support/v7/widget/aw$a;

    invoke-direct {v0}, Landroid/support/v7/widget/aw$a;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/aw;->v:Landroid/support/v7/widget/aw$a;

    .line 133
    return-void
.end method


# virtual methods
.method a(IIII)Landroid/view/View;
    .locals 9
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .param p3, "preferredBoundFlags"    # I
    .param p4, "acceptableBoundFlags"    # I

    .prologue
    .line 216
    iget-object v8, p0, Landroid/support/v7/widget/aw;->u:Landroid/support/v7/widget/aw$b;

    invoke-interface {v8}, Landroid/support/v7/widget/aw$b;->c()I

    move-result v7

    .line 217
    .local v7, "start":I
    iget-object v8, p0, Landroid/support/v7/widget/aw;->u:Landroid/support/v7/widget/aw$b;

    invoke-interface {v8}, Landroid/support/v7/widget/aw$b;->d()I

    move-result v4

    .line 218
    .local v4, "end":I
    if-le p2, p1, :cond_0

    const/4 v6, 0x1

    .line 219
    .local v6, "next":I
    :goto_0
    const/4 v0, 0x0

    .line 220
    .local v0, "acceptableMatch":Landroid/view/View;
    move v5, p1

    .local v5, "i":I
    :goto_1
    if-eq v5, p2, :cond_3

    .line 221
    iget-object v8, p0, Landroid/support/v7/widget/aw;->u:Landroid/support/v7/widget/aw$b;

    invoke-interface {v8, v5}, Landroid/support/v7/widget/aw$b;->a(I)Landroid/view/View;

    move-result-object v1

    .line 222
    .local v1, "child":Landroid/view/View;
    iget-object v8, p0, Landroid/support/v7/widget/aw;->u:Landroid/support/v7/widget/aw$b;

    invoke-interface {v8, v1}, Landroid/support/v7/widget/aw$b;->a(Landroid/view/View;)I

    move-result v3

    .line 223
    .local v3, "childStart":I
    iget-object v8, p0, Landroid/support/v7/widget/aw;->u:Landroid/support/v7/widget/aw$b;

    invoke-interface {v8, v1}, Landroid/support/v7/widget/aw$b;->b(Landroid/view/View;)I

    move-result v2

    .line 224
    .local v2, "childEnd":I
    iget-object v8, p0, Landroid/support/v7/widget/aw;->v:Landroid/support/v7/widget/aw$a;

    invoke-virtual {v8, v7, v4, v3, v2}, Landroid/support/v7/widget/aw$a;->a(IIII)V

    .line 225
    if-eqz p3, :cond_1

    .line 226
    iget-object v8, p0, Landroid/support/v7/widget/aw;->v:Landroid/support/v7/widget/aw$a;

    invoke-virtual {v8}, Landroid/support/v7/widget/aw$a;->a()V

    .line 227
    iget-object v8, p0, Landroid/support/v7/widget/aw;->v:Landroid/support/v7/widget/aw$a;

    invoke-virtual {v8, p3}, Landroid/support/v7/widget/aw$a;->a(I)V

    .line 228
    iget-object v8, p0, Landroid/support/v7/widget/aw;->v:Landroid/support/v7/widget/aw$a;

    invoke-virtual {v8}, Landroid/support/v7/widget/aw$a;->b()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 241
    .end local v1    # "child":Landroid/view/View;
    .end local v2    # "childEnd":I
    .end local v3    # "childStart":I
    :goto_2
    return-object v1

    .line 218
    .end local v0    # "acceptableMatch":Landroid/view/View;
    .end local v5    # "i":I
    .end local v6    # "next":I
    :cond_0
    const/4 v6, -0x1

    goto :goto_0

    .line 233
    .restart local v0    # "acceptableMatch":Landroid/view/View;
    .restart local v1    # "child":Landroid/view/View;
    .restart local v2    # "childEnd":I
    .restart local v3    # "childStart":I
    .restart local v5    # "i":I
    .restart local v6    # "next":I
    :cond_1
    if-eqz p4, :cond_2

    .line 234
    iget-object v8, p0, Landroid/support/v7/widget/aw;->v:Landroid/support/v7/widget/aw$a;

    invoke-virtual {v8}, Landroid/support/v7/widget/aw$a;->a()V

    .line 235
    iget-object v8, p0, Landroid/support/v7/widget/aw;->v:Landroid/support/v7/widget/aw$a;

    invoke-virtual {v8, p4}, Landroid/support/v7/widget/aw$a;->a(I)V

    .line 236
    iget-object v8, p0, Landroid/support/v7/widget/aw;->v:Landroid/support/v7/widget/aw$a;

    invoke-virtual {v8}, Landroid/support/v7/widget/aw$a;->b()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 237
    move-object v0, v1

    .line 220
    :cond_2
    add-int/2addr v5, v6

    goto :goto_1

    .end local v1    # "child":Landroid/view/View;
    .end local v2    # "childEnd":I
    .end local v3    # "childStart":I
    :cond_3
    move-object v1, v0

    .line 241
    goto :goto_2
.end method

.method a(Landroid/view/View;I)Z
    .locals 5
    .param p1, "child"    # Landroid/view/View;
    .param p2, "boundsFlags"    # I

    .prologue
    .line 251
    iget-object v0, p0, Landroid/support/v7/widget/aw;->v:Landroid/support/v7/widget/aw$a;

    iget-object v1, p0, Landroid/support/v7/widget/aw;->u:Landroid/support/v7/widget/aw$b;

    invoke-interface {v1}, Landroid/support/v7/widget/aw$b;->c()I

    move-result v1

    iget-object v2, p0, Landroid/support/v7/widget/aw;->u:Landroid/support/v7/widget/aw$b;

    invoke-interface {v2}, Landroid/support/v7/widget/aw$b;->d()I

    move-result v2

    iget-object v3, p0, Landroid/support/v7/widget/aw;->u:Landroid/support/v7/widget/aw$b;

    .line 252
    invoke-interface {v3, p1}, Landroid/support/v7/widget/aw$b;->a(Landroid/view/View;)I

    move-result v3

    iget-object v4, p0, Landroid/support/v7/widget/aw;->u:Landroid/support/v7/widget/aw$b;

    invoke-interface {v4, p1}, Landroid/support/v7/widget/aw$b;->b(Landroid/view/View;)I

    move-result v4

    .line 251
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/support/v7/widget/aw$a;->a(IIII)V

    .line 253
    if-eqz p2, :cond_0

    .line 254
    iget-object v0, p0, Landroid/support/v7/widget/aw;->v:Landroid/support/v7/widget/aw$a;

    invoke-virtual {v0}, Landroid/support/v7/widget/aw$a;->a()V

    .line 255
    iget-object v0, p0, Landroid/support/v7/widget/aw;->v:Landroid/support/v7/widget/aw$a;

    invoke-virtual {v0, p2}, Landroid/support/v7/widget/aw$a;->a(I)V

    .line 256
    iget-object v0, p0, Landroid/support/v7/widget/aw;->v:Landroid/support/v7/widget/aw$a;

    invoke-virtual {v0}, Landroid/support/v7/widget/aw$a;->b()Z

    move-result v0

    .line 258
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
