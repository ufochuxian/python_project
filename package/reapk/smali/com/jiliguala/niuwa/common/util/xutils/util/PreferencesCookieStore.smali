.class public Lcom/jiliguala/niuwa/common/util/xutils/util/PreferencesCookieStore;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/http/client/CookieStore;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jiliguala/niuwa/common/util/xutils/util/PreferencesCookieStore$SerializableCookie;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "CookiePrefsFile"

.field private static final b:Ljava/lang/String; = "names"

.field private static final c:Ljava/lang/String; = "cookie_"


# instance fields
.field private final d:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lorg/apache/http/cookie/Cookie;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v10, 0x0

    const/4 v5, 0x0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const-string v6, "CookiePrefsFile"

    invoke-virtual {p1, v6, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    iput-object v6, p0, Lcom/jiliguala/niuwa/common/util/xutils/util/PreferencesCookieStore;->e:Landroid/content/SharedPreferences;

    .line 55
    new-instance v6, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v6}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v6, p0, Lcom/jiliguala/niuwa/common/util/xutils/util/PreferencesCookieStore;->d:Ljava/util/concurrent/ConcurrentHashMap;

    .line 58
    iget-object v6, p0, Lcom/jiliguala/niuwa/common/util/xutils/util/PreferencesCookieStore;->e:Landroid/content/SharedPreferences;

    const-string v7, "names"

    invoke-interface {v6, v7, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 59
    .local v4, "storedCookieNames":Ljava/lang/String;
    if-eqz v4, :cond_2

    .line 60
    const-string v6, ","

    invoke-static {v4, v6}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 61
    .local v0, "cookieNames":[Ljava/lang/String;
    array-length v6, v0

    :goto_0
    if-ge v5, v6, :cond_1

    aget-object v3, v0, v5

    .line 62
    .local v3, "name":Ljava/lang/String;
    iget-object v7, p0, Lcom/jiliguala/niuwa/common/util/xutils/util/PreferencesCookieStore;->e:Landroid/content/SharedPreferences;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "cookie_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 63
    .local v2, "encodedCookie":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 64
    invoke-virtual {p0, v2}, Lcom/jiliguala/niuwa/common/util/xutils/util/PreferencesCookieStore;->b(Ljava/lang/String;)Lorg/apache/http/cookie/Cookie;

    move-result-object v1

    .line 65
    .local v1, "decodedCookie":Lorg/apache/http/cookie/Cookie;
    if-eqz v1, :cond_0

    .line 66
    iget-object v7, p0, Lcom/jiliguala/niuwa/common/util/xutils/util/PreferencesCookieStore;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v7, v3, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    .end local v1    # "decodedCookie":Lorg/apache/http/cookie/Cookie;
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 72
    .end local v2    # "encodedCookie":Ljava/lang/String;
    .end local v3    # "name":Ljava/lang/String;
    :cond_1
    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    invoke-virtual {p0, v5}, Lcom/jiliguala/niuwa/common/util/xutils/util/PreferencesCookieStore;->clearExpired(Ljava/util/Date;)Z

    .line 74
    .end local v0    # "cookieNames":[Ljava/lang/String;
    :cond_2
    return-void
.end method


# virtual methods
.method protected a(Lcom/jiliguala/niuwa/common/util/xutils/util/PreferencesCookieStore$SerializableCookie;)Ljava/lang/String;
    .locals 4
    .param p1, "cookie"    # Lcom/jiliguala/niuwa/common/util/xutils/util/PreferencesCookieStore$SerializableCookie;

    .prologue
    .line 147
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 149
    .local v1, "os":Ljava/io/ByteArrayOutputStream;
    :try_start_0
    new-instance v2, Ljava/io/ObjectOutputStream;

    invoke-direct {v2, v1}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 150
    .local v2, "outputStream":Ljava/io/ObjectOutputStream;
    invoke-virtual {v2, p1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 155
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/jiliguala/niuwa/common/util/xutils/util/PreferencesCookieStore;->a([B)Ljava/lang/String;

    move-result-object v3

    .end local v2    # "outputStream":Ljava/io/ObjectOutputStream;
    :goto_0
    return-object v3

    .line 151
    :catch_0
    move-exception v0

    .line 152
    .local v0, "e":Ljava/lang/Throwable;
    const/4 v3, 0x0

    goto :goto_0
.end method

.method protected a([B)Ljava/lang/String;
    .locals 6
    .param p1, "b"    # [B

    .prologue
    .line 175
    new-instance v1, Ljava/lang/StringBuffer;

    array-length v3, p1

    mul-int/lit8 v3, v3, 0x2

    invoke-direct {v1, v3}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 176
    .local v1, "sb":Ljava/lang/StringBuffer;
    array-length v4, p1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_1

    aget-byte v0, p1, v3

    .line 177
    .local v0, "element":B
    and-int/lit16 v2, v0, 0xff

    .line 178
    .local v2, "v":I
    const/16 v5, 0x10

    if-ge v2, v5, :cond_0

    .line 179
    const/16 v5, 0x30

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 181
    :cond_0
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 176
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 183
    .end local v0    # "element":B
    .end local v2    # "v":I
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public a(Ljava/lang/String;)Lorg/apache/http/cookie/Cookie;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 143
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/util/PreferencesCookieStore;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/cookie/Cookie;

    return-object v0
.end method

.method public addCookie(Lorg/apache/http/cookie/Cookie;)V
    .locals 5
    .param p1, "cookie"    # Lorg/apache/http/cookie/Cookie;

    .prologue
    .line 78
    invoke-interface {p1}, Lorg/apache/http/cookie/Cookie;->getName()Ljava/lang/String;

    move-result-object v1

    .line 81
    .local v1, "name":Ljava/lang/String;
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-interface {p1, v2}, Lorg/apache/http/cookie/Cookie;->isExpired(Ljava/util/Date;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 82
    iget-object v2, p0, Lcom/jiliguala/niuwa/common/util/xutils/util/PreferencesCookieStore;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    :goto_0
    iget-object v2, p0, Lcom/jiliguala/niuwa/common/util/xutils/util/PreferencesCookieStore;->e:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 89
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "names"

    const-string v3, ","

    iget-object v4, p0, Lcom/jiliguala/niuwa/common/util/xutils/util/PreferencesCookieStore;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 90
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cookie_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/jiliguala/niuwa/common/util/xutils/util/PreferencesCookieStore$SerializableCookie;

    invoke-direct {v3, p0, p1}, Lcom/jiliguala/niuwa/common/util/xutils/util/PreferencesCookieStore$SerializableCookie;-><init>(Lcom/jiliguala/niuwa/common/util/xutils/util/PreferencesCookieStore;Lorg/apache/http/cookie/Cookie;)V

    invoke-virtual {p0, v3}, Lcom/jiliguala/niuwa/common/util/xutils/util/PreferencesCookieStore;->a(Lcom/jiliguala/niuwa/common/util/xutils/util/PreferencesCookieStore$SerializableCookie;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 91
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 92
    return-void

    .line 84
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_0
    iget-object v2, p0, Lcom/jiliguala/niuwa/common/util/xutils/util/PreferencesCookieStore;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method protected b(Ljava/lang/String;)Lorg/apache/http/cookie/Cookie;
    .locals 6
    .param p1, "cookieStr"    # Ljava/lang/String;

    .prologue
    .line 159
    invoke-virtual {p0, p1}, Lcom/jiliguala/niuwa/common/util/xutils/util/PreferencesCookieStore;->c(Ljava/lang/String;)[B

    move-result-object v0

    .line 160
    .local v0, "bytes":[B
    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 161
    .local v3, "is":Ljava/io/ByteArrayInputStream;
    const/4 v1, 0x0

    .line 163
    .local v1, "cookie":Lorg/apache/http/cookie/Cookie;
    :try_start_0
    new-instance v4, Ljava/io/ObjectInputStream;

    invoke-direct {v4, v3}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 164
    .local v4, "ois":Ljava/io/ObjectInputStream;
    invoke-virtual {v4}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/jiliguala/niuwa/common/util/xutils/util/PreferencesCookieStore$SerializableCookie;

    invoke-virtual {v5}, Lcom/jiliguala/niuwa/common/util/xutils/util/PreferencesCookieStore$SerializableCookie;->getCookie()Lorg/apache/http/cookie/Cookie;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 169
    .end local v4    # "ois":Ljava/io/ObjectInputStream;
    :goto_0
    return-object v1

    .line 165
    :catch_0
    move-exception v2

    .line 166
    .local v2, "e":Ljava/lang/Throwable;
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v2}, Lcom/jiliguala/niuwa/common/util/xutils/util/n;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected c(Ljava/lang/String;)[B
    .locals 7
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    const/16 v6, 0x10

    .line 187
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 188
    .local v2, "len":I
    div-int/lit8 v3, v2, 0x2

    new-array v0, v3, [B

    .line 189
    .local v0, "data":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 190
    div-int/lit8 v3, v1, 0x2

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4, v6}, Ljava/lang/Character;->digit(CI)I

    move-result v4

    shl-int/lit8 v4, v4, 0x4

    add-int/lit8 v5, v1, 0x1

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5, v6}, Ljava/lang/Character;->digit(CI)I

    move-result v5

    add-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v0, v3

    .line 189
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 192
    :cond_0
    return-object v0
.end method

.method public clear()V
    .locals 5

    .prologue
    .line 97
    iget-object v2, p0, Lcom/jiliguala/niuwa/common/util/xutils/util/PreferencesCookieStore;->e:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 98
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    iget-object v2, p0, Lcom/jiliguala/niuwa/common/util/xutils/util/PreferencesCookieStore;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 99
    .local v1, "name":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cookie_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 101
    .end local v1    # "name":Ljava/lang/String;
    :cond_0
    const-string v2, "names"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 102
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 105
    iget-object v2, p0, Lcom/jiliguala/niuwa/common/util/xutils/util/PreferencesCookieStore;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 106
    return-void
.end method

.method public clearExpired(Ljava/util/Date;)Z
    .locals 8
    .param p1, "date"    # Ljava/util/Date;

    .prologue
    .line 110
    const/4 v0, 0x0

    .line 111
    .local v0, "clearedAny":Z
    iget-object v5, p0, Lcom/jiliguala/niuwa/common/util/xutils/util/PreferencesCookieStore;->e:Landroid/content/SharedPreferences;

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 113
    .local v2, "editor":Landroid/content/SharedPreferences$Editor;
    iget-object v5, p0, Lcom/jiliguala/niuwa/common/util/xutils/util/PreferencesCookieStore;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 114
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/apache/http/cookie/Cookie;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 115
    .local v4, "name":Ljava/lang/String;
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/http/cookie/Cookie;

    .line 116
    .local v1, "cookie":Lorg/apache/http/cookie/Cookie;
    invoke-interface {v1}, Lorg/apache/http/cookie/Cookie;->getExpiryDate()Ljava/util/Date;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-interface {v1, p1}, Lorg/apache/http/cookie/Cookie;->isExpired(Ljava/util/Date;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 118
    :cond_1
    iget-object v6, p0, Lcom/jiliguala/niuwa/common/util/xutils/util/PreferencesCookieStore;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v6, v4}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "cookie_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v6}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 124
    const/4 v0, 0x1

    goto :goto_0

    .line 129
    .end local v1    # "cookie":Lorg/apache/http/cookie/Cookie;
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/apache/http/cookie/Cookie;>;"
    .end local v4    # "name":Ljava/lang/String;
    :cond_2
    if-eqz v0, :cond_3

    .line 130
    const-string v5, "names"

    const-string v6, ","

    iget-object v7, p0, Lcom/jiliguala/niuwa/common/util/xutils/util/PreferencesCookieStore;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v7}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v5, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 132
    :cond_3
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 134
    return v0
.end method

.method public getCookies()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/cookie/Cookie;",
            ">;"
        }
    .end annotation

    .prologue
    .line 139
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/jiliguala/niuwa/common/util/xutils/util/PreferencesCookieStore;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method
