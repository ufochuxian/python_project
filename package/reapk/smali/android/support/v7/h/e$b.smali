.class Landroid/support/v7/h/e$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/h/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# static fields
.field private static h:Landroid/support/v7/h/e$b;

.field private static final i:Ljava/lang/Object;


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:Ljava/lang/Object;

.field private j:Landroid/support/v7/h/e$b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 178
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/support/v7/h/e$b;->i:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(III)Landroid/support/v7/h/e$b;
    .locals 7
    .param p0, "what"    # I
    .param p1, "arg1"    # I
    .param p2, "arg2"    # I

    .prologue
    const/4 v3, 0x0

    .line 223
    const/4 v6, 0x0

    move v0, p0

    move v1, p1

    move v2, p2

    move v4, v3

    move v5, v3

    invoke-static/range {v0 .. v6}, Landroid/support/v7/h/e$b;->a(IIIIIILjava/lang/Object;)Landroid/support/v7/h/e$b;

    move-result-object v0

    return-object v0
.end method

.method static a(IIIIIILjava/lang/Object;)Landroid/support/v7/h/e$b;
    .locals 3
    .param p0, "what"    # I
    .param p1, "arg1"    # I
    .param p2, "arg2"    # I
    .param p3, "arg3"    # I
    .param p4, "arg4"    # I
    .param p5, "arg5"    # I
    .param p6, "data"    # Ljava/lang/Object;

    .prologue
    .line 202
    sget-object v2, Landroid/support/v7/h/e$b;->i:Ljava/lang/Object;

    monitor-enter v2

    .line 204
    :try_start_0
    sget-object v1, Landroid/support/v7/h/e$b;->h:Landroid/support/v7/h/e$b;

    if-nez v1, :cond_0

    .line 205
    new-instance v0, Landroid/support/v7/h/e$b;

    invoke-direct {v0}, Landroid/support/v7/h/e$b;-><init>()V

    .line 211
    .local v0, "item":Landroid/support/v7/h/e$b;
    :goto_0
    iput p0, v0, Landroid/support/v7/h/e$b;->a:I

    .line 212
    iput p1, v0, Landroid/support/v7/h/e$b;->b:I

    .line 213
    iput p2, v0, Landroid/support/v7/h/e$b;->c:I

    .line 214
    iput p3, v0, Landroid/support/v7/h/e$b;->d:I

    .line 215
    iput p4, v0, Landroid/support/v7/h/e$b;->e:I

    .line 216
    iput p5, v0, Landroid/support/v7/h/e$b;->f:I

    .line 217
    iput-object p6, v0, Landroid/support/v7/h/e$b;->g:Ljava/lang/Object;

    .line 218
    monitor-exit v2

    return-object v0

    .line 207
    .end local v0    # "item":Landroid/support/v7/h/e$b;
    :cond_0
    sget-object v0, Landroid/support/v7/h/e$b;->h:Landroid/support/v7/h/e$b;

    .line 208
    .restart local v0    # "item":Landroid/support/v7/h/e$b;
    sget-object v1, Landroid/support/v7/h/e$b;->h:Landroid/support/v7/h/e$b;

    iget-object v1, v1, Landroid/support/v7/h/e$b;->j:Landroid/support/v7/h/e$b;

    sput-object v1, Landroid/support/v7/h/e$b;->h:Landroid/support/v7/h/e$b;

    .line 209
    const/4 v1, 0x0

    iput-object v1, v0, Landroid/support/v7/h/e$b;->j:Landroid/support/v7/h/e$b;

    goto :goto_0

    .line 219
    .end local v0    # "item":Landroid/support/v7/h/e$b;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method static a(IILjava/lang/Object;)Landroid/support/v7/h/e$b;
    .locals 7
    .param p0, "what"    # I
    .param p1, "arg1"    # I
    .param p2, "data"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x0

    .line 227
    move v0, p0

    move v1, p1

    move v3, v2

    move v4, v2

    move v5, v2

    move-object v6, p2

    invoke-static/range {v0 .. v6}, Landroid/support/v7/h/e$b;->a(IIIIIILjava/lang/Object;)Landroid/support/v7/h/e$b;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Landroid/support/v7/h/e$b;)Landroid/support/v7/h/e$b;
    .locals 1
    .param p0, "x0"    # Landroid/support/v7/h/e$b;

    .prologue
    .line 175
    iget-object v0, p0, Landroid/support/v7/h/e$b;->j:Landroid/support/v7/h/e$b;

    return-object v0
.end method

.method static synthetic a(Landroid/support/v7/h/e$b;Landroid/support/v7/h/e$b;)Landroid/support/v7/h/e$b;
    .locals 0
    .param p0, "x0"    # Landroid/support/v7/h/e$b;
    .param p1, "x1"    # Landroid/support/v7/h/e$b;

    .prologue
    .line 175
    iput-object p1, p0, Landroid/support/v7/h/e$b;->j:Landroid/support/v7/h/e$b;

    return-object p1
.end method


# virtual methods
.method a()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 189
    iput-object v1, p0, Landroid/support/v7/h/e$b;->j:Landroid/support/v7/h/e$b;

    .line 190
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/h/e$b;->f:I

    iput v0, p0, Landroid/support/v7/h/e$b;->e:I

    iput v0, p0, Landroid/support/v7/h/e$b;->d:I

    iput v0, p0, Landroid/support/v7/h/e$b;->c:I

    iput v0, p0, Landroid/support/v7/h/e$b;->b:I

    iput v0, p0, Landroid/support/v7/h/e$b;->a:I

    .line 191
    iput-object v1, p0, Landroid/support/v7/h/e$b;->g:Ljava/lang/Object;

    .line 192
    sget-object v1, Landroid/support/v7/h/e$b;->i:Ljava/lang/Object;

    monitor-enter v1

    .line 193
    :try_start_0
    sget-object v0, Landroid/support/v7/h/e$b;->h:Landroid/support/v7/h/e$b;

    if-eqz v0, :cond_0

    .line 194
    sget-object v0, Landroid/support/v7/h/e$b;->h:Landroid/support/v7/h/e$b;

    iput-object v0, p0, Landroid/support/v7/h/e$b;->j:Landroid/support/v7/h/e$b;

    .line 196
    :cond_0
    sput-object p0, Landroid/support/v7/h/e$b;->h:Landroid/support/v7/h/e$b;

    .line 197
    monitor-exit v1

    .line 198
    return-void

    .line 197
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
