.class public Lcom/xiaomi/a/a/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/xiaomi/smack/a/a;


# static fields
.field public static a:Z


# instance fields
.field private b:Ljava/text/SimpleDateFormat;

.field private c:Lcom/xiaomi/smack/a;

.field private d:Lcom/xiaomi/smack/f;

.field private e:Lcom/xiaomi/smack/d;

.field private f:Ljava/io/Writer;

.field private g:Ljava/io/Reader;

.field private h:Lcom/xiaomi/smack/d/f;

.field private i:Lcom/xiaomi/smack/d/m;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/xiaomi/a/a/a;->a:Z

    return-void
.end method

.method public constructor <init>(Lcom/xiaomi/smack/a;Ljava/io/Writer;Ljava/io/Reader;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "hh:mm:ss aaa"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/xiaomi/a/a/a;->b:Ljava/text/SimpleDateFormat;

    iput-object v2, p0, Lcom/xiaomi/a/a/a;->c:Lcom/xiaomi/smack/a;

    iput-object v2, p0, Lcom/xiaomi/a/a/a;->d:Lcom/xiaomi/smack/f;

    iput-object v2, p0, Lcom/xiaomi/a/a/a;->e:Lcom/xiaomi/smack/d;

    iput-object p1, p0, Lcom/xiaomi/a/a/a;->c:Lcom/xiaomi/smack/a;

    iput-object p2, p0, Lcom/xiaomi/a/a/a;->f:Ljava/io/Writer;

    iput-object p3, p0, Lcom/xiaomi/a/a/a;->g:Ljava/io/Reader;

    invoke-direct {p0}, Lcom/xiaomi/a/a/a;->e()V

    return-void
.end method

.method static synthetic a(Lcom/xiaomi/a/a/a;)Ljava/text/SimpleDateFormat;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/a/a/a;->b:Ljava/text/SimpleDateFormat;

    return-object v0
.end method

.method static synthetic b(Lcom/xiaomi/a/a/a;)Lcom/xiaomi/smack/a;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/a/a/a;->c:Lcom/xiaomi/smack/a;

    return-object v0
.end method

.method private e()V
    .locals 3

    new-instance v0, Lcom/xiaomi/smack/d/a;

    iget-object v1, p0, Lcom/xiaomi/a/a/a;->g:Ljava/io/Reader;

    invoke-direct {v0, v1}, Lcom/xiaomi/smack/d/a;-><init>(Ljava/io/Reader;)V

    new-instance v1, Lcom/xiaomi/a/a/b;

    invoke-direct {v1, p0}, Lcom/xiaomi/a/a/b;-><init>(Lcom/xiaomi/a/a/a;)V

    iput-object v1, p0, Lcom/xiaomi/a/a/a;->h:Lcom/xiaomi/smack/d/f;

    iget-object v1, p0, Lcom/xiaomi/a/a/a;->h:Lcom/xiaomi/smack/d/f;

    invoke-virtual {v0, v1}, Lcom/xiaomi/smack/d/a;->a(Lcom/xiaomi/smack/d/f;)V

    new-instance v1, Lcom/xiaomi/smack/d/b;

    iget-object v2, p0, Lcom/xiaomi/a/a/a;->f:Ljava/io/Writer;

    invoke-direct {v1, v2}, Lcom/xiaomi/smack/d/b;-><init>(Ljava/io/Writer;)V

    new-instance v2, Lcom/xiaomi/a/a/c;

    invoke-direct {v2, p0}, Lcom/xiaomi/a/a/c;-><init>(Lcom/xiaomi/a/a/a;)V

    iput-object v2, p0, Lcom/xiaomi/a/a/a;->i:Lcom/xiaomi/smack/d/m;

    iget-object v2, p0, Lcom/xiaomi/a/a/a;->i:Lcom/xiaomi/smack/d/m;

    invoke-virtual {v1, v2}, Lcom/xiaomi/smack/d/b;->a(Lcom/xiaomi/smack/d/m;)V

    iput-object v0, p0, Lcom/xiaomi/a/a/a;->g:Ljava/io/Reader;

    iput-object v1, p0, Lcom/xiaomi/a/a/a;->f:Ljava/io/Writer;

    new-instance v0, Lcom/xiaomi/a/a/d;

    invoke-direct {v0, p0}, Lcom/xiaomi/a/a/d;-><init>(Lcom/xiaomi/a/a/a;)V

    iput-object v0, p0, Lcom/xiaomi/a/a/a;->d:Lcom/xiaomi/smack/f;

    new-instance v0, Lcom/xiaomi/a/a/e;

    invoke-direct {v0, p0}, Lcom/xiaomi/a/a/e;-><init>(Lcom/xiaomi/a/a/a;)V

    iput-object v0, p0, Lcom/xiaomi/a/a/a;->e:Lcom/xiaomi/smack/d;

    return-void
.end method


# virtual methods
.method public a()Ljava/io/Reader;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/a/a/a;->g:Ljava/io/Reader;

    return-object v0
.end method

.method public a(Ljava/io/Reader;)Ljava/io/Reader;
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/a/a/a;->g:Ljava/io/Reader;

    check-cast v0, Lcom/xiaomi/smack/d/a;

    iget-object v1, p0, Lcom/xiaomi/a/a/a;->h:Lcom/xiaomi/smack/d/f;

    invoke-virtual {v0, v1}, Lcom/xiaomi/smack/d/a;->b(Lcom/xiaomi/smack/d/f;)V

    new-instance v0, Lcom/xiaomi/smack/d/a;

    invoke-direct {v0, p1}, Lcom/xiaomi/smack/d/a;-><init>(Ljava/io/Reader;)V

    iget-object v1, p0, Lcom/xiaomi/a/a/a;->h:Lcom/xiaomi/smack/d/f;

    invoke-virtual {v0, v1}, Lcom/xiaomi/smack/d/a;->a(Lcom/xiaomi/smack/d/f;)V

    iput-object v0, p0, Lcom/xiaomi/a/a/a;->g:Ljava/io/Reader;

    iget-object v0, p0, Lcom/xiaomi/a/a/a;->g:Ljava/io/Reader;

    return-object v0
.end method

.method public a(Ljava/io/Writer;)Ljava/io/Writer;
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/a/a/a;->f:Ljava/io/Writer;

    check-cast v0, Lcom/xiaomi/smack/d/b;

    iget-object v1, p0, Lcom/xiaomi/a/a/a;->i:Lcom/xiaomi/smack/d/m;

    invoke-virtual {v0, v1}, Lcom/xiaomi/smack/d/b;->b(Lcom/xiaomi/smack/d/m;)V

    new-instance v0, Lcom/xiaomi/smack/d/b;

    invoke-direct {v0, p1}, Lcom/xiaomi/smack/d/b;-><init>(Ljava/io/Writer;)V

    iget-object v1, p0, Lcom/xiaomi/a/a/a;->i:Lcom/xiaomi/smack/d/m;

    invoke-virtual {v0, v1}, Lcom/xiaomi/smack/d/b;->a(Lcom/xiaomi/smack/d/m;)V

    iput-object v0, p0, Lcom/xiaomi/a/a/a;->f:Ljava/io/Writer;

    iget-object v0, p0, Lcom/xiaomi/a/a/a;->f:Ljava/io/Writer;

    return-object v0
.end method

.method public b()Ljava/io/Writer;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/a/a/a;->f:Ljava/io/Writer;

    return-object v0
.end method

.method public c()Lcom/xiaomi/smack/f;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/a/a/a;->d:Lcom/xiaomi/smack/f;

    return-object v0
.end method

.method public d()Lcom/xiaomi/smack/f;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
