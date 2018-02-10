.class abstract enum Lorg/jsoup/b/c;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jsoup/b/c$17;,
        Lorg/jsoup/b/c$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/jsoup/b/c;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum AfterAfterBody:Lorg/jsoup/b/c;

.field public static final enum AfterAfterFrameset:Lorg/jsoup/b/c;

.field public static final enum AfterBody:Lorg/jsoup/b/c;

.field public static final enum AfterFrameset:Lorg/jsoup/b/c;

.field public static final enum AfterHead:Lorg/jsoup/b/c;

.field public static final enum BeforeHead:Lorg/jsoup/b/c;

.field public static final enum BeforeHtml:Lorg/jsoup/b/c;

.field public static final enum ForeignContent:Lorg/jsoup/b/c;

.field public static final enum InBody:Lorg/jsoup/b/c;

.field public static final enum InCaption:Lorg/jsoup/b/c;

.field public static final enum InCell:Lorg/jsoup/b/c;

.field public static final enum InColumnGroup:Lorg/jsoup/b/c;

.field public static final enum InFrameset:Lorg/jsoup/b/c;

.field public static final enum InHead:Lorg/jsoup/b/c;

.field public static final enum InHeadNoscript:Lorg/jsoup/b/c;

.field public static final enum InRow:Lorg/jsoup/b/c;

.field public static final enum InSelect:Lorg/jsoup/b/c;

.field public static final enum InSelectInTable:Lorg/jsoup/b/c;

.field public static final enum InTable:Lorg/jsoup/b/c;

.field public static final enum InTableBody:Lorg/jsoup/b/c;

.field public static final enum InTableText:Lorg/jsoup/b/c;

.field public static final enum Initial:Lorg/jsoup/b/c;

.field public static final enum Text:Lorg/jsoup/b/c;

.field private static a:Ljava/lang/String;

.field private static final synthetic b:[Lorg/jsoup/b/c;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 14
    new-instance v0, Lorg/jsoup/b/c$1;

    const-string v1, "Initial"

    invoke-direct {v0, v1, v3}, Lorg/jsoup/b/c$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jsoup/b/c;->Initial:Lorg/jsoup/b/c;

    .line 37
    new-instance v0, Lorg/jsoup/b/c$12;

    const-string v1, "BeforeHtml"

    invoke-direct {v0, v1, v4}, Lorg/jsoup/b/c$12;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jsoup/b/c;->BeforeHtml:Lorg/jsoup/b/c;

    .line 66
    new-instance v0, Lorg/jsoup/b/c$18;

    const-string v1, "BeforeHead"

    invoke-direct {v0, v1, v5}, Lorg/jsoup/b/c$18;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jsoup/b/c;->BeforeHead:Lorg/jsoup/b/c;

    .line 94
    new-instance v0, Lorg/jsoup/b/c$19;

    const-string v1, "InHead"

    invoke-direct {v0, v1, v6}, Lorg/jsoup/b/c$19;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jsoup/b/c;->InHead:Lorg/jsoup/b/c;

    .line 166
    new-instance v0, Lorg/jsoup/b/c$20;

    const-string v1, "InHeadNoscript"

    invoke-direct {v0, v1, v7}, Lorg/jsoup/b/c$20;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jsoup/b/c;->InHeadNoscript:Lorg/jsoup/b/c;

    .line 195
    new-instance v0, Lorg/jsoup/b/c$21;

    const-string v1, "AfterHead"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lorg/jsoup/b/c$21;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jsoup/b/c;->AfterHead:Lorg/jsoup/b/c;

    .line 246
    new-instance v0, Lorg/jsoup/b/c$22;

    const-string v1, "InBody"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lorg/jsoup/b/c$22;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jsoup/b/c;->InBody:Lorg/jsoup/b/c;

    .line 779
    new-instance v0, Lorg/jsoup/b/c$23;

    const-string v1, "Text"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lorg/jsoup/b/c$23;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jsoup/b/c;->Text:Lorg/jsoup/b/c;

    .line 798
    new-instance v0, Lorg/jsoup/b/c$24;

    const-string v1, "InTable"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lorg/jsoup/b/c$24;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jsoup/b/c;->InTable:Lorg/jsoup/b/c;

    .line 898
    new-instance v0, Lorg/jsoup/b/c$2;

    const-string v1, "InTableText"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lorg/jsoup/b/c$2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jsoup/b/c;->InTableText:Lorg/jsoup/b/c;

    .line 934
    new-instance v0, Lorg/jsoup/b/c$3;

    const-string v1, "InCaption"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lorg/jsoup/b/c$3;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jsoup/b/c;->InCaption:Lorg/jsoup/b/c;

    .line 969
    new-instance v0, Lorg/jsoup/b/c$4;

    const-string v1, "InColumnGroup"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lorg/jsoup/b/c$4;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jsoup/b/c;->InColumnGroup:Lorg/jsoup/b/c;

    .line 1024
    new-instance v0, Lorg/jsoup/b/c$5;

    const-string v1, "InTableBody"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lorg/jsoup/b/c$5;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jsoup/b/c;->InTableBody:Lorg/jsoup/b/c;

    .line 1084
    new-instance v0, Lorg/jsoup/b/c$6;

    const-string v1, "InRow"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lorg/jsoup/b/c$6;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jsoup/b/c;->InRow:Lorg/jsoup/b/c;

    .line 1145
    new-instance v0, Lorg/jsoup/b/c$7;

    const-string v1, "InCell"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lorg/jsoup/b/c$7;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jsoup/b/c;->InCell:Lorg/jsoup/b/c;

    .line 1202
    new-instance v0, Lorg/jsoup/b/c$8;

    const-string v1, "InSelect"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lorg/jsoup/b/c$8;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jsoup/b/c;->InSelect:Lorg/jsoup/b/c;

    .line 1290
    new-instance v0, Lorg/jsoup/b/c$9;

    const-string v1, "InSelectInTable"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lorg/jsoup/b/c$9;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jsoup/b/c;->InSelectInTable:Lorg/jsoup/b/c;

    .line 1308
    new-instance v0, Lorg/jsoup/b/c$10;

    const-string v1, "AfterBody"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Lorg/jsoup/b/c$10;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jsoup/b/c;->AfterBody:Lorg/jsoup/b/c;

    .line 1336
    new-instance v0, Lorg/jsoup/b/c$11;

    const-string v1, "InFrameset"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2}, Lorg/jsoup/b/c$11;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jsoup/b/c;->InFrameset:Lorg/jsoup/b/c;

    .line 1382
    new-instance v0, Lorg/jsoup/b/c$13;

    const-string v1, "AfterFrameset"

    const/16 v2, 0x13

    invoke-direct {v0, v1, v2}, Lorg/jsoup/b/c$13;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jsoup/b/c;->AfterFrameset:Lorg/jsoup/b/c;

    .line 1406
    new-instance v0, Lorg/jsoup/b/c$14;

    const-string v1, "AfterAfterBody"

    const/16 v2, 0x14

    invoke-direct {v0, v1, v2}, Lorg/jsoup/b/c$14;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jsoup/b/c;->AfterAfterBody:Lorg/jsoup/b/c;

    .line 1422
    new-instance v0, Lorg/jsoup/b/c$15;

    const-string v1, "AfterAfterFrameset"

    const/16 v2, 0x15

    invoke-direct {v0, v1, v2}, Lorg/jsoup/b/c$15;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jsoup/b/c;->AfterAfterFrameset:Lorg/jsoup/b/c;

    .line 1439
    new-instance v0, Lorg/jsoup/b/c$16;

    const-string v1, "ForeignContent"

    const/16 v2, 0x16

    invoke-direct {v0, v1, v2}, Lorg/jsoup/b/c$16;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jsoup/b/c;->ForeignContent:Lorg/jsoup/b/c;

    .line 13
    const/16 v0, 0x17

    new-array v0, v0, [Lorg/jsoup/b/c;

    sget-object v1, Lorg/jsoup/b/c;->Initial:Lorg/jsoup/b/c;

    aput-object v1, v0, v3

    sget-object v1, Lorg/jsoup/b/c;->BeforeHtml:Lorg/jsoup/b/c;

    aput-object v1, v0, v4

    sget-object v1, Lorg/jsoup/b/c;->BeforeHead:Lorg/jsoup/b/c;

    aput-object v1, v0, v5

    sget-object v1, Lorg/jsoup/b/c;->InHead:Lorg/jsoup/b/c;

    aput-object v1, v0, v6

    sget-object v1, Lorg/jsoup/b/c;->InHeadNoscript:Lorg/jsoup/b/c;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lorg/jsoup/b/c;->AfterHead:Lorg/jsoup/b/c;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lorg/jsoup/b/c;->InBody:Lorg/jsoup/b/c;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lorg/jsoup/b/c;->Text:Lorg/jsoup/b/c;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lorg/jsoup/b/c;->InTable:Lorg/jsoup/b/c;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lorg/jsoup/b/c;->InTableText:Lorg/jsoup/b/c;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lorg/jsoup/b/c;->InCaption:Lorg/jsoup/b/c;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lorg/jsoup/b/c;->InColumnGroup:Lorg/jsoup/b/c;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lorg/jsoup/b/c;->InTableBody:Lorg/jsoup/b/c;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lorg/jsoup/b/c;->InRow:Lorg/jsoup/b/c;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lorg/jsoup/b/c;->InCell:Lorg/jsoup/b/c;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lorg/jsoup/b/c;->InSelect:Lorg/jsoup/b/c;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lorg/jsoup/b/c;->InSelectInTable:Lorg/jsoup/b/c;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lorg/jsoup/b/c;->AfterBody:Lorg/jsoup/b/c;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lorg/jsoup/b/c;->InFrameset:Lorg/jsoup/b/c;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lorg/jsoup/b/c;->AfterFrameset:Lorg/jsoup/b/c;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lorg/jsoup/b/c;->AfterAfterBody:Lorg/jsoup/b/c;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lorg/jsoup/b/c;->AfterAfterFrameset:Lorg/jsoup/b/c;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lorg/jsoup/b/c;->ForeignContent:Lorg/jsoup/b/c;

    aput-object v2, v0, v1

    sput-object v0, Lorg/jsoup/b/c;->b:[Lorg/jsoup/b/c;

    .line 1446
    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/jsoup/b/c;->a:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 13
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 1480
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILorg/jsoup/b/c$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # I
    .param p3, "x2"    # Lorg/jsoup/b/c$1;

    .prologue
    .line 13
    invoke-direct {p0, p1, p2}, Lorg/jsoup/b/c;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 13
    sget-object v0, Lorg/jsoup/b/c;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lorg/jsoup/b/h$f;Lorg/jsoup/b/b;)V
    .locals 0
    .param p0, "x0"    # Lorg/jsoup/b/h$f;
    .param p1, "x1"    # Lorg/jsoup/b/b;

    .prologue
    .line 13
    invoke-static {p0, p1}, Lorg/jsoup/b/c;->c(Lorg/jsoup/b/h$f;Lorg/jsoup/b/b;)V

    return-void
.end method

.method static synthetic a(Lorg/jsoup/b/h;)Z
    .locals 1
    .param p0, "x0"    # Lorg/jsoup/b/h;

    .prologue
    .line 13
    invoke-static {p0}, Lorg/jsoup/b/c;->b(Lorg/jsoup/b/h;)Z

    move-result v0

    return v0
.end method

.method static synthetic b(Lorg/jsoup/b/h$f;Lorg/jsoup/b/b;)V
    .locals 0
    .param p0, "x0"    # Lorg/jsoup/b/h$f;
    .param p1, "x1"    # Lorg/jsoup/b/b;

    .prologue
    .line 13
    invoke-static {p0, p1}, Lorg/jsoup/b/c;->d(Lorg/jsoup/b/h$f;Lorg/jsoup/b/b;)V

    return-void
.end method

.method private static b(Lorg/jsoup/b/h;)Z
    .locals 5
    .param p0, "t"    # Lorg/jsoup/b/h;

    .prologue
    const/4 v3, 0x0

    .line 1451
    invoke-virtual {p0}, Lorg/jsoup/b/h;->j()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1452
    invoke-virtual {p0}, Lorg/jsoup/b/h;->k()Lorg/jsoup/b/h$a;

    move-result-object v4

    invoke-virtual {v4}, Lorg/jsoup/b/h$a;->m()Ljava/lang/String;

    move-result-object v1

    .line 1454
    .local v1, "data":Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v2, v4, :cond_2

    .line 1455
    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1456
    .local v0, "c":C
    invoke-static {v0}, Lorg/jsoup/helper/c;->b(I)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1461
    .end local v0    # "c":C
    .end local v1    # "data":Ljava/lang/String;
    .end local v2    # "i":I
    :cond_0
    :goto_1
    return v3

    .line 1454
    .restart local v0    # "c":C
    .restart local v1    # "data":Ljava/lang/String;
    .restart local v2    # "i":I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1459
    .end local v0    # "c":C
    :cond_2
    const/4 v3, 0x1

    goto :goto_1
.end method

.method private static c(Lorg/jsoup/b/h$f;Lorg/jsoup/b/b;)V
    .locals 2
    .param p0, "startTag"    # Lorg/jsoup/b/h$f;
    .param p1, "tb"    # Lorg/jsoup/b/b;

    .prologue
    .line 1465
    invoke-virtual {p1, p0}, Lorg/jsoup/b/b;->a(Lorg/jsoup/b/h$f;)Lorg/jsoup/nodes/f;

    .line 1466
    iget-object v0, p1, Lorg/jsoup/b/b;->d:Lorg/jsoup/b/j;

    sget-object v1, Lorg/jsoup/b/k;->Rcdata:Lorg/jsoup/b/k;

    invoke-virtual {v0, v1}, Lorg/jsoup/b/j;->a(Lorg/jsoup/b/k;)V

    .line 1467
    invoke-virtual {p1}, Lorg/jsoup/b/b;->b()V

    .line 1468
    sget-object v0, Lorg/jsoup/b/c;->Text:Lorg/jsoup/b/c;

    invoke-virtual {p1, v0}, Lorg/jsoup/b/b;->a(Lorg/jsoup/b/c;)V

    .line 1469
    return-void
.end method

.method private static d(Lorg/jsoup/b/h$f;Lorg/jsoup/b/b;)V
    .locals 2
    .param p0, "startTag"    # Lorg/jsoup/b/h$f;
    .param p1, "tb"    # Lorg/jsoup/b/b;

    .prologue
    .line 1472
    invoke-virtual {p1, p0}, Lorg/jsoup/b/b;->a(Lorg/jsoup/b/h$f;)Lorg/jsoup/nodes/f;

    .line 1473
    iget-object v0, p1, Lorg/jsoup/b/b;->d:Lorg/jsoup/b/j;

    sget-object v1, Lorg/jsoup/b/k;->Rawtext:Lorg/jsoup/b/k;

    invoke-virtual {v0, v1}, Lorg/jsoup/b/j;->a(Lorg/jsoup/b/k;)V

    .line 1474
    invoke-virtual {p1}, Lorg/jsoup/b/b;->b()V

    .line 1475
    sget-object v0, Lorg/jsoup/b/c;->Text:Lorg/jsoup/b/c;

    invoke-virtual {p1, v0}, Lorg/jsoup/b/b;->a(Lorg/jsoup/b/c;)V

    .line 1476
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/jsoup/b/c;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 13
    const-class v0, Lorg/jsoup/b/c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/jsoup/b/c;

    return-object v0
.end method

.method public static values()[Lorg/jsoup/b/c;
    .locals 1

    .prologue
    .line 13
    sget-object v0, Lorg/jsoup/b/c;->b:[Lorg/jsoup/b/c;

    invoke-virtual {v0}, [Lorg/jsoup/b/c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/jsoup/b/c;

    return-object v0
.end method


# virtual methods
.method abstract a(Lorg/jsoup/b/h;Lorg/jsoup/b/b;)Z
.end method
