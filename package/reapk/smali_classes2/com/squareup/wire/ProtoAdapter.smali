.class public abstract Lcom/squareup/wire/ProtoAdapter;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/squareup/wire/ProtoAdapter$EnumConstantNotFoundException;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final d:Lcom/squareup/wire/ProtoAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/squareup/wire/ProtoAdapter",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final e:Lcom/squareup/wire/ProtoAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/squareup/wire/ProtoAdapter",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final f:Lcom/squareup/wire/ProtoAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/squareup/wire/ProtoAdapter",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final g:Lcom/squareup/wire/ProtoAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/squareup/wire/ProtoAdapter",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final h:Lcom/squareup/wire/ProtoAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/squareup/wire/ProtoAdapter",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final i:Lcom/squareup/wire/ProtoAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/squareup/wire/ProtoAdapter",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final j:Lcom/squareup/wire/ProtoAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/squareup/wire/ProtoAdapter",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public static final k:Lcom/squareup/wire/ProtoAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/squareup/wire/ProtoAdapter",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public static final l:Lcom/squareup/wire/ProtoAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/squareup/wire/ProtoAdapter",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public static final m:Lcom/squareup/wire/ProtoAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/squareup/wire/ProtoAdapter",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public static final n:Lcom/squareup/wire/ProtoAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/squareup/wire/ProtoAdapter",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public static final o:Lcom/squareup/wire/ProtoAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/squareup/wire/ProtoAdapter",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public static final p:Lcom/squareup/wire/ProtoAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/squareup/wire/ProtoAdapter",
            "<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field public static final q:Lcom/squareup/wire/ProtoAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/squareup/wire/ProtoAdapter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final r:Lcom/squareup/wire/ProtoAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/squareup/wire/ProtoAdapter",
            "<",
            "Lokio/ByteString;",
            ">;"
        }
    .end annotation
.end field

.field private static final s:I = 0x1

.field private static final t:I = 0x4

.field private static final u:I = 0x8


# instance fields
.field final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field b:Lcom/squareup/wire/ProtoAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/squareup/wire/ProtoAdapter",
            "<",
            "Ljava/util/List",
            "<TE;>;>;"
        }
    .end annotation
.end field

.field c:Lcom/squareup/wire/ProtoAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/squareup/wire/ProtoAdapter",
            "<",
            "Ljava/util/List",
            "<TE;>;>;"
        }
    .end annotation
.end field

.field private final v:Lcom/squareup/wire/FieldEncoding;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 190
    new-instance v0, Lcom/squareup/wire/ProtoAdapter$1;

    sget-object v1, Lcom/squareup/wire/FieldEncoding;->VARINT:Lcom/squareup/wire/FieldEncoding;

    const-class v2, Ljava/lang/Boolean;

    invoke-direct {v0, v1, v2}, Lcom/squareup/wire/ProtoAdapter$1;-><init>(Lcom/squareup/wire/FieldEncoding;Ljava/lang/Class;)V

    sput-object v0, Lcom/squareup/wire/ProtoAdapter;->d:Lcom/squareup/wire/ProtoAdapter;

    .line 207
    new-instance v0, Lcom/squareup/wire/ProtoAdapter$8;

    sget-object v1, Lcom/squareup/wire/FieldEncoding;->VARINT:Lcom/squareup/wire/FieldEncoding;

    const-class v2, Ljava/lang/Integer;

    invoke-direct {v0, v1, v2}, Lcom/squareup/wire/ProtoAdapter$8;-><init>(Lcom/squareup/wire/FieldEncoding;Ljava/lang/Class;)V

    sput-object v0, Lcom/squareup/wire/ProtoAdapter;->e:Lcom/squareup/wire/ProtoAdapter;

    .line 221
    new-instance v0, Lcom/squareup/wire/ProtoAdapter$9;

    sget-object v1, Lcom/squareup/wire/FieldEncoding;->VARINT:Lcom/squareup/wire/FieldEncoding;

    const-class v2, Ljava/lang/Integer;

    invoke-direct {v0, v1, v2}, Lcom/squareup/wire/ProtoAdapter$9;-><init>(Lcom/squareup/wire/FieldEncoding;Ljava/lang/Class;)V

    sput-object v0, Lcom/squareup/wire/ProtoAdapter;->f:Lcom/squareup/wire/ProtoAdapter;

    .line 235
    new-instance v0, Lcom/squareup/wire/ProtoAdapter$10;

    sget-object v1, Lcom/squareup/wire/FieldEncoding;->VARINT:Lcom/squareup/wire/FieldEncoding;

    const-class v2, Ljava/lang/Integer;

    invoke-direct {v0, v1, v2}, Lcom/squareup/wire/ProtoAdapter$10;-><init>(Lcom/squareup/wire/FieldEncoding;Ljava/lang/Class;)V

    sput-object v0, Lcom/squareup/wire/ProtoAdapter;->g:Lcom/squareup/wire/ProtoAdapter;

    .line 249
    new-instance v0, Lcom/squareup/wire/ProtoAdapter$11;

    sget-object v1, Lcom/squareup/wire/FieldEncoding;->FIXED32:Lcom/squareup/wire/FieldEncoding;

    const-class v2, Ljava/lang/Integer;

    invoke-direct {v0, v1, v2}, Lcom/squareup/wire/ProtoAdapter$11;-><init>(Lcom/squareup/wire/FieldEncoding;Ljava/lang/Class;)V

    sput-object v0, Lcom/squareup/wire/ProtoAdapter;->h:Lcom/squareup/wire/ProtoAdapter;

    .line 263
    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->h:Lcom/squareup/wire/ProtoAdapter;

    sput-object v0, Lcom/squareup/wire/ProtoAdapter;->i:Lcom/squareup/wire/ProtoAdapter;

    .line 264
    new-instance v0, Lcom/squareup/wire/ProtoAdapter$12;

    sget-object v1, Lcom/squareup/wire/FieldEncoding;->VARINT:Lcom/squareup/wire/FieldEncoding;

    const-class v2, Ljava/lang/Long;

    invoke-direct {v0, v1, v2}, Lcom/squareup/wire/ProtoAdapter$12;-><init>(Lcom/squareup/wire/FieldEncoding;Ljava/lang/Class;)V

    sput-object v0, Lcom/squareup/wire/ProtoAdapter;->j:Lcom/squareup/wire/ProtoAdapter;

    .line 282
    new-instance v0, Lcom/squareup/wire/ProtoAdapter$13;

    sget-object v1, Lcom/squareup/wire/FieldEncoding;->VARINT:Lcom/squareup/wire/FieldEncoding;

    const-class v2, Ljava/lang/Long;

    invoke-direct {v0, v1, v2}, Lcom/squareup/wire/ProtoAdapter$13;-><init>(Lcom/squareup/wire/FieldEncoding;Ljava/lang/Class;)V

    sput-object v0, Lcom/squareup/wire/ProtoAdapter;->k:Lcom/squareup/wire/ProtoAdapter;

    .line 296
    new-instance v0, Lcom/squareup/wire/ProtoAdapter$14;

    sget-object v1, Lcom/squareup/wire/FieldEncoding;->VARINT:Lcom/squareup/wire/FieldEncoding;

    const-class v2, Ljava/lang/Long;

    invoke-direct {v0, v1, v2}, Lcom/squareup/wire/ProtoAdapter$14;-><init>(Lcom/squareup/wire/FieldEncoding;Ljava/lang/Class;)V

    sput-object v0, Lcom/squareup/wire/ProtoAdapter;->l:Lcom/squareup/wire/ProtoAdapter;

    .line 310
    new-instance v0, Lcom/squareup/wire/ProtoAdapter$15;

    sget-object v1, Lcom/squareup/wire/FieldEncoding;->FIXED64:Lcom/squareup/wire/FieldEncoding;

    const-class v2, Ljava/lang/Long;

    invoke-direct {v0, v1, v2}, Lcom/squareup/wire/ProtoAdapter$15;-><init>(Lcom/squareup/wire/FieldEncoding;Ljava/lang/Class;)V

    sput-object v0, Lcom/squareup/wire/ProtoAdapter;->m:Lcom/squareup/wire/ProtoAdapter;

    .line 324
    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->m:Lcom/squareup/wire/ProtoAdapter;

    sput-object v0, Lcom/squareup/wire/ProtoAdapter;->n:Lcom/squareup/wire/ProtoAdapter;

    .line 325
    new-instance v0, Lcom/squareup/wire/ProtoAdapter$2;

    sget-object v1, Lcom/squareup/wire/FieldEncoding;->FIXED32:Lcom/squareup/wire/FieldEncoding;

    const-class v2, Ljava/lang/Float;

    invoke-direct {v0, v1, v2}, Lcom/squareup/wire/ProtoAdapter$2;-><init>(Lcom/squareup/wire/FieldEncoding;Ljava/lang/Class;)V

    sput-object v0, Lcom/squareup/wire/ProtoAdapter;->o:Lcom/squareup/wire/ProtoAdapter;

    .line 339
    new-instance v0, Lcom/squareup/wire/ProtoAdapter$3;

    sget-object v1, Lcom/squareup/wire/FieldEncoding;->FIXED64:Lcom/squareup/wire/FieldEncoding;

    const-class v2, Ljava/lang/Double;

    invoke-direct {v0, v1, v2}, Lcom/squareup/wire/ProtoAdapter$3;-><init>(Lcom/squareup/wire/FieldEncoding;Ljava/lang/Class;)V

    sput-object v0, Lcom/squareup/wire/ProtoAdapter;->p:Lcom/squareup/wire/ProtoAdapter;

    .line 353
    new-instance v0, Lcom/squareup/wire/ProtoAdapter$4;

    sget-object v1, Lcom/squareup/wire/FieldEncoding;->LENGTH_DELIMITED:Lcom/squareup/wire/FieldEncoding;

    const-class v2, Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/squareup/wire/ProtoAdapter$4;-><init>(Lcom/squareup/wire/FieldEncoding;Ljava/lang/Class;)V

    sput-object v0, Lcom/squareup/wire/ProtoAdapter;->q:Lcom/squareup/wire/ProtoAdapter;

    .line 367
    new-instance v0, Lcom/squareup/wire/ProtoAdapter$5;

    sget-object v1, Lcom/squareup/wire/FieldEncoding;->LENGTH_DELIMITED:Lcom/squareup/wire/FieldEncoding;

    const-class v2, Lokio/ByteString;

    invoke-direct {v0, v1, v2}, Lcom/squareup/wire/ProtoAdapter$5;-><init>(Lcom/squareup/wire/FieldEncoding;Ljava/lang/Class;)V

    sput-object v0, Lcom/squareup/wire/ProtoAdapter;->r:Lcom/squareup/wire/ProtoAdapter;

    return-void
.end method

.method public constructor <init>(Lcom/squareup/wire/FieldEncoding;Ljava/lang/Class;)V
    .locals 0
    .param p1, "fieldEncoding"    # Lcom/squareup/wire/FieldEncoding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/squareup/wire/FieldEncoding;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 53
    .local p0, "this":Lcom/squareup/wire/ProtoAdapter;, "Lcom/squareup/wire/ProtoAdapter<TE;>;"
    .local p2, "javaType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lcom/squareup/wire/ProtoAdapter;->v:Lcom/squareup/wire/FieldEncoding;

    .line 55
    iput-object p2, p0, Lcom/squareup/wire/ProtoAdapter;->a:Ljava/lang/Class;

    .line 56
    return-void
.end method

.method public static a(Lcom/squareup/wire/Message;)Lcom/squareup/wire/ProtoAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<M:",
            "Lcom/squareup/wire/Message;",
            ">(TM;)",
            "Lcom/squareup/wire/ProtoAdapter",
            "<TM;>;"
        }
    .end annotation

    .prologue
    .line 71
    .local p0, "message":Lcom/squareup/wire/Message;, "TM;"
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/squareup/wire/ProtoAdapter;->c(Ljava/lang/Class;)Lcom/squareup/wire/ProtoAdapter;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/Class;)Lcom/squareup/wire/ProtoAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<M:",
            "Lcom/squareup/wire/Message",
            "<TM;TB;>;B:",
            "Lcom/squareup/wire/Message$a",
            "<TM;TB;>;>(",
            "Ljava/lang/Class",
            "<TM;>;)",
            "Lcom/squareup/wire/ProtoAdapter",
            "<TM;>;"
        }
    .end annotation

    .prologue
    .line 61
    .local p0, "type":Ljava/lang/Class;, "Ljava/lang/Class<TM;>;"
    invoke-static {p0}, Lcom/squareup/wire/g;->d(Ljava/lang/Class;)Lcom/squareup/wire/g;

    move-result-object v0

    return-object v0
.end method

.method static a(Ljava/lang/String;)Lcom/squareup/wire/ProtoAdapter;
    .locals 7
    .param p0, "adapterString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/squareup/wire/ProtoAdapter",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 86
    const/16 v4, 0x23

    :try_start_0
    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 87
    .local v3, "hash":I
    const/4 v4, 0x0

    invoke-virtual {p0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 88
    .local v0, "className":Ljava/lang/String;
    add-int/lit8 v4, v3, 0x1

    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 89
    .local v2, "fieldName":Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/squareup/wire/ProtoAdapter;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v4

    .line 90
    .end local v0    # "className":Ljava/lang/String;
    .end local v2    # "fieldName":Ljava/lang/String;
    .end local v3    # "hash":I
    :catch_0
    move-exception v1

    .line 91
    .local v1, "e":Ljava/lang/ReflectiveOperationException;
    :goto_0
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "failed to access "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 90
    .end local v1    # "e":Ljava/lang/ReflectiveOperationException;
    :catch_1
    move-exception v1

    goto :goto_0

    :catch_2
    move-exception v1

    goto :goto_0
.end method

.method public static b(Ljava/lang/Class;)Lcom/squareup/wire/f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lcom/squareup/wire/i;",
            ">(",
            "Ljava/lang/Class",
            "<TE;>;)",
            "Lcom/squareup/wire/f",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 66
    .local p0, "type":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    new-instance v0, Lcom/squareup/wire/f;

    invoke-direct {v0, p0}, Lcom/squareup/wire/f;-><init>(Ljava/lang/Class;)V

    return-object v0
.end method

.method private c()Lcom/squareup/wire/ProtoAdapter;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/squareup/wire/ProtoAdapter",
            "<",
            "Ljava/util/List",
            "<TE;>;>;"
        }
    .end annotation

    .prologue
    .line 404
    .local p0, "this":Lcom/squareup/wire/ProtoAdapter;, "Lcom/squareup/wire/ProtoAdapter<TE;>;"
    iget-object v0, p0, Lcom/squareup/wire/ProtoAdapter;->v:Lcom/squareup/wire/FieldEncoding;

    sget-object v1, Lcom/squareup/wire/FieldEncoding;->LENGTH_DELIMITED:Lcom/squareup/wire/FieldEncoding;

    if-ne v0, v1, :cond_0

    .line 405
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unable to pack a length-delimited type."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 407
    :cond_0
    new-instance v0, Lcom/squareup/wire/ProtoAdapter$6;

    sget-object v1, Lcom/squareup/wire/FieldEncoding;->LENGTH_DELIMITED:Lcom/squareup/wire/FieldEncoding;

    const-class v2, Ljava/util/List;

    invoke-direct {v0, p0, v1, v2}, Lcom/squareup/wire/ProtoAdapter$6;-><init>(Lcom/squareup/wire/ProtoAdapter;Lcom/squareup/wire/FieldEncoding;Ljava/lang/Class;)V

    return-object v0
.end method

.method public static c(Ljava/lang/Class;)Lcom/squareup/wire/ProtoAdapter;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<M:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TM;>;)",
            "Lcom/squareup/wire/ProtoAdapter",
            "<TM;>;"
        }
    .end annotation

    .prologue
    .line 77
    .local p0, "type":Ljava/lang/Class;, "Ljava/lang/Class<TM;>;"
    :try_start_0
    const-string v1, "ADAPTER"

    invoke-virtual {p0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/squareup/wire/ProtoAdapter;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 78
    :catch_0
    move-exception v0

    .line 79
    .local v0, "e":Ljava/lang/ReflectiveOperationException;
    :goto_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "failed to access "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "#ADAPTER"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 78
    .end local v0    # "e":Ljava/lang/ReflectiveOperationException;
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method private d()Lcom/squareup/wire/ProtoAdapter;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/squareup/wire/ProtoAdapter",
            "<",
            "Ljava/util/List",
            "<TE;>;>;"
        }
    .end annotation

    .prologue
    .line 445
    .local p0, "this":Lcom/squareup/wire/ProtoAdapter;, "Lcom/squareup/wire/ProtoAdapter<TE;>;"
    new-instance v0, Lcom/squareup/wire/ProtoAdapter$7;

    iget-object v1, p0, Lcom/squareup/wire/ProtoAdapter;->v:Lcom/squareup/wire/FieldEncoding;

    const-class v2, Ljava/util/List;

    invoke-direct {v0, p0, v1, v2}, Lcom/squareup/wire/ProtoAdapter$7;-><init>(Lcom/squareup/wire/ProtoAdapter;Lcom/squareup/wire/FieldEncoding;Ljava/lang/Class;)V

    return-object v0
.end method


# virtual methods
.method public a(ILjava/lang/Object;)I
    .locals 3
    .param p1, "tag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)I"
        }
    .end annotation

    .prologue
    .line 111
    .local p0, "this":Lcom/squareup/wire/ProtoAdapter;, "Lcom/squareup/wire/ProtoAdapter<TE;>;"
    .local p2, "value":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, p2}, Lcom/squareup/wire/ProtoAdapter;->b(Ljava/lang/Object;)I

    move-result v0

    .line 112
    .local v0, "size":I
    iget-object v1, p0, Lcom/squareup/wire/ProtoAdapter;->v:Lcom/squareup/wire/FieldEncoding;

    sget-object v2, Lcom/squareup/wire/FieldEncoding;->LENGTH_DELIMITED:Lcom/squareup/wire/FieldEncoding;

    if-ne v1, v2, :cond_0

    .line 113
    invoke-static {v0}, Lcom/squareup/wire/e;->c(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 115
    :cond_0
    invoke-static {p1}, Lcom/squareup/wire/e;->a(I)I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

.method public final a()Lcom/squareup/wire/ProtoAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/squareup/wire/ProtoAdapter",
            "<",
            "Ljava/util/List",
            "<TE;>;>;"
        }
    .end annotation

    .prologue
    .line 393
    .local p0, "this":Lcom/squareup/wire/ProtoAdapter;, "Lcom/squareup/wire/ProtoAdapter<TE;>;"
    iget-object v0, p0, Lcom/squareup/wire/ProtoAdapter;->b:Lcom/squareup/wire/ProtoAdapter;

    .line 394
    .local v0, "adapter":Lcom/squareup/wire/ProtoAdapter;, "Lcom/squareup/wire/ProtoAdapter<Ljava/util/List<TE;>;>;"
    if-eqz v0, :cond_0

    .end local v0    # "adapter":Lcom/squareup/wire/ProtoAdapter;, "Lcom/squareup/wire/ProtoAdapter<Ljava/util/List<TE;>;>;"
    :goto_0
    return-object v0

    .restart local v0    # "adapter":Lcom/squareup/wire/ProtoAdapter;, "Lcom/squareup/wire/ProtoAdapter<Ljava/util/List<TE;>;>;"
    :cond_0
    invoke-direct {p0}, Lcom/squareup/wire/ProtoAdapter;->c()Lcom/squareup/wire/ProtoAdapter;

    move-result-object v0

    .end local v0    # "adapter":Lcom/squareup/wire/ProtoAdapter;, "Lcom/squareup/wire/ProtoAdapter<Ljava/util/List<TE;>;>;"
    iput-object v0, p0, Lcom/squareup/wire/ProtoAdapter;->b:Lcom/squareup/wire/ProtoAdapter;

    goto :goto_0
.end method

.method a(Lcom/squareup/wire/WireField$Label;)Lcom/squareup/wire/ProtoAdapter;
    .locals 1
    .param p1, "label"    # Lcom/squareup/wire/WireField$Label;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/squareup/wire/WireField$Label;",
            ")",
            "Lcom/squareup/wire/ProtoAdapter",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 383
    .local p0, "this":Lcom/squareup/wire/ProtoAdapter;, "Lcom/squareup/wire/ProtoAdapter<TE;>;"
    invoke-virtual {p1}, Lcom/squareup/wire/WireField$Label;->isRepeated()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 384
    invoke-virtual {p1}, Lcom/squareup/wire/WireField$Label;->isPacked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 385
    invoke-virtual {p0}, Lcom/squareup/wire/ProtoAdapter;->a()Lcom/squareup/wire/ProtoAdapter;

    move-result-object v0

    .line 388
    :goto_0
    return-object v0

    .line 386
    :cond_0
    invoke-virtual {p0}, Lcom/squareup/wire/ProtoAdapter;->b()Lcom/squareup/wire/ProtoAdapter;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, p0

    .line 388
    goto :goto_0
.end method

.method public abstract a(Lcom/squareup/wire/d;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/squareup/wire/d;",
            ")TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final a(Ljava/io/InputStream;)Ljava/lang/Object;
    .locals 1
    .param p1, "stream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 175
    .local p0, "this":Lcom/squareup/wire/ProtoAdapter;, "Lcom/squareup/wire/ProtoAdapter<TE;>;"
    const-string v0, "stream == null"

    invoke-static {p1, v0}, Lcom/squareup/wire/c;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 176
    invoke-static {p1}, Lokio/o;->a(Ljava/io/InputStream;)Lokio/x;

    move-result-object v0

    invoke-static {v0}, Lokio/o;->a(Lokio/x;)Lokio/e;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/squareup/wire/ProtoAdapter;->a(Lokio/e;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)TE;"
        }
    .end annotation

    .prologue
    .line 97
    .local p0, "this":Lcom/squareup/wire/ProtoAdapter;, "Lcom/squareup/wire/ProtoAdapter<TE;>;"
    .local p1, "value":Ljava/lang/Object;, "TE;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public final a(Lokio/ByteString;)Ljava/lang/Object;
    .locals 1
    .param p1, "bytes"    # Lokio/ByteString;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokio/ByteString;",
            ")TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 169
    .local p0, "this":Lcom/squareup/wire/ProtoAdapter;, "Lcom/squareup/wire/ProtoAdapter<TE;>;"
    const-string v0, "bytes == null"

    invoke-static {p1, v0}, Lcom/squareup/wire/c;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 170
    new-instance v0, Lokio/c;

    invoke-direct {v0}, Lokio/c;-><init>()V

    invoke-virtual {v0, p1}, Lokio/c;->a(Lokio/ByteString;)Lokio/c;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/squareup/wire/ProtoAdapter;->a(Lokio/e;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lokio/e;)Ljava/lang/Object;
    .locals 1
    .param p1, "source"    # Lokio/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokio/e;",
            ")TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 181
    .local p0, "this":Lcom/squareup/wire/ProtoAdapter;, "Lcom/squareup/wire/ProtoAdapter<TE;>;"
    const-string v0, "source == null"

    invoke-static {p1, v0}, Lcom/squareup/wire/c;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 182
    new-instance v0, Lcom/squareup/wire/d;

    invoke-direct {v0, p1}, Lcom/squareup/wire/d;-><init>(Lokio/e;)V

    invoke-virtual {p0, v0}, Lcom/squareup/wire/ProtoAdapter;->a(Lcom/squareup/wire/d;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final a([B)Ljava/lang/Object;
    .locals 1
    .param p1, "bytes"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 163
    .local p0, "this":Lcom/squareup/wire/ProtoAdapter;, "Lcom/squareup/wire/ProtoAdapter<TE;>;"
    const-string v0, "bytes == null"

    invoke-static {p1, v0}, Lcom/squareup/wire/c;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 164
    new-instance v0, Lokio/c;

    invoke-direct {v0}, Lokio/c;-><init>()V

    invoke-virtual {v0, p1}, Lokio/c;->c([B)Lokio/c;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/squareup/wire/ProtoAdapter;->a(Lokio/e;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/squareup/wire/e;ILjava/lang/Object;)V
    .locals 2
    .param p1, "writer"    # Lcom/squareup/wire/e;
    .param p2, "tag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/squareup/wire/e;",
            "ITE;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 123
    .local p0, "this":Lcom/squareup/wire/ProtoAdapter;, "Lcom/squareup/wire/ProtoAdapter<TE;>;"
    .local p3, "value":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Lcom/squareup/wire/ProtoAdapter;->v:Lcom/squareup/wire/FieldEncoding;

    invoke-virtual {p1, p2, v0}, Lcom/squareup/wire/e;->a(ILcom/squareup/wire/FieldEncoding;)V

    .line 124
    iget-object v0, p0, Lcom/squareup/wire/ProtoAdapter;->v:Lcom/squareup/wire/FieldEncoding;

    sget-object v1, Lcom/squareup/wire/FieldEncoding;->LENGTH_DELIMITED:Lcom/squareup/wire/FieldEncoding;

    if-ne v0, v1, :cond_0

    .line 125
    invoke-virtual {p0, p3}, Lcom/squareup/wire/ProtoAdapter;->b(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/squareup/wire/e;->g(I)V

    .line 127
    :cond_0
    invoke-virtual {p0, p1, p3}, Lcom/squareup/wire/ProtoAdapter;->a(Lcom/squareup/wire/e;Ljava/lang/Object;)V

    .line 128
    return-void
.end method

.method public abstract a(Lcom/squareup/wire/e;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/squareup/wire/e;",
            "TE;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final a(Ljava/io/OutputStream;Ljava/lang/Object;)V
    .locals 2
    .param p1, "stream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/OutputStream;",
            "TE;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 151
    .local p0, "this":Lcom/squareup/wire/ProtoAdapter;, "Lcom/squareup/wire/ProtoAdapter<TE;>;"
    .local p2, "value":Ljava/lang/Object;, "TE;"
    const-string v1, "value == null"

    invoke-static {p2, v1}, Lcom/squareup/wire/c;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 152
    const-string v1, "stream == null"

    invoke-static {p1, v1}, Lcom/squareup/wire/c;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 153
    invoke-static {p1}, Lokio/o;->a(Ljava/io/OutputStream;)Lokio/w;

    move-result-object v1

    invoke-static {v1}, Lokio/o;->a(Lokio/w;)Lokio/d;

    move-result-object v0

    .line 154
    .local v0, "buffer":Lokio/d;
    invoke-virtual {p0, v0, p2}, Lcom/squareup/wire/ProtoAdapter;->a(Lokio/d;Ljava/lang/Object;)V

    .line 155
    invoke-interface {v0}, Lokio/d;->e()Lokio/d;

    .line 156
    return-void
.end method

.method public final a(Lokio/d;Ljava/lang/Object;)V
    .locals 1
    .param p1, "sink"    # Lokio/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokio/d;",
            "TE;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 132
    .local p0, "this":Lcom/squareup/wire/ProtoAdapter;, "Lcom/squareup/wire/ProtoAdapter<TE;>;"
    .local p2, "value":Ljava/lang/Object;, "TE;"
    const-string v0, "value == null"

    invoke-static {p2, v0}, Lcom/squareup/wire/c;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 133
    const-string v0, "sink == null"

    invoke-static {p1, v0}, Lcom/squareup/wire/c;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 134
    new-instance v0, Lcom/squareup/wire/e;

    invoke-direct {v0, p1}, Lcom/squareup/wire/e;-><init>(Lokio/d;)V

    invoke-virtual {p0, v0, p2}, Lcom/squareup/wire/ProtoAdapter;->a(Lcom/squareup/wire/e;Ljava/lang/Object;)V

    .line 135
    return-void
.end method

.method public abstract b(Ljava/lang/Object;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)I"
        }
    .end annotation
.end method

.method public final b()Lcom/squareup/wire/ProtoAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/squareup/wire/ProtoAdapter",
            "<",
            "Ljava/util/List",
            "<TE;>;>;"
        }
    .end annotation

    .prologue
    .line 399
    .local p0, "this":Lcom/squareup/wire/ProtoAdapter;, "Lcom/squareup/wire/ProtoAdapter<TE;>;"
    iget-object v0, p0, Lcom/squareup/wire/ProtoAdapter;->c:Lcom/squareup/wire/ProtoAdapter;

    .line 400
    .local v0, "adapter":Lcom/squareup/wire/ProtoAdapter;, "Lcom/squareup/wire/ProtoAdapter<Ljava/util/List<TE;>;>;"
    if-eqz v0, :cond_0

    .end local v0    # "adapter":Lcom/squareup/wire/ProtoAdapter;, "Lcom/squareup/wire/ProtoAdapter<Ljava/util/List<TE;>;>;"
    :goto_0
    return-object v0

    .restart local v0    # "adapter":Lcom/squareup/wire/ProtoAdapter;, "Lcom/squareup/wire/ProtoAdapter<Ljava/util/List<TE;>;>;"
    :cond_0
    invoke-direct {p0}, Lcom/squareup/wire/ProtoAdapter;->d()Lcom/squareup/wire/ProtoAdapter;

    move-result-object v0

    .end local v0    # "adapter":Lcom/squareup/wire/ProtoAdapter;, "Lcom/squareup/wire/ProtoAdapter<Ljava/util/List<TE;>;>;"
    iput-object v0, p0, Lcom/squareup/wire/ProtoAdapter;->c:Lcom/squareup/wire/ProtoAdapter;

    goto :goto_0
.end method

.method public final c(Ljava/lang/Object;)[B
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)[B"
        }
    .end annotation

    .prologue
    .line 139
    .local p0, "this":Lcom/squareup/wire/ProtoAdapter;, "Lcom/squareup/wire/ProtoAdapter<TE;>;"
    .local p1, "value":Ljava/lang/Object;, "TE;"
    const-string v2, "value == null"

    invoke-static {p1, v2}, Lcom/squareup/wire/c;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 140
    new-instance v0, Lokio/c;

    invoke-direct {v0}, Lokio/c;-><init>()V

    .line 142
    .local v0, "buffer":Lokio/c;
    :try_start_0
    invoke-virtual {p0, v0, p1}, Lcom/squareup/wire/ProtoAdapter;->a(Lokio/d;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 146
    invoke-virtual {v0}, Lokio/c;->w()[B

    move-result-object v2

    return-object v2

    .line 143
    :catch_0
    move-exception v1

    .line 144
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2
.end method

.method public d(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 187
    .local p0, "this":Lcom/squareup/wire/ProtoAdapter;, "Lcom/squareup/wire/ProtoAdapter<TE;>;"
    .local p1, "value":Ljava/lang/Object;, "TE;"
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
