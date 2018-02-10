.class public final Lde/greenrobot/dao/InternalQueryDaoAccess;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final dao:Lde/greenrobot/dao/AbstractDao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lde/greenrobot/dao/AbstractDao",
            "<TT;*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lde/greenrobot/dao/AbstractDao;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lde/greenrobot/dao/AbstractDao",
            "<TT;*>;)V"
        }
    .end annotation

    .prologue
    .line 12
    .local p0, "this":Lde/greenrobot/dao/InternalQueryDaoAccess;, "Lde/greenrobot/dao/InternalQueryDaoAccess<TT;>;"
    .local p1, "abstractDao":Lde/greenrobot/dao/AbstractDao;, "Lde/greenrobot/dao/AbstractDao<TT;*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lde/greenrobot/dao/InternalQueryDaoAccess;->dao:Lde/greenrobot/dao/AbstractDao;

    .line 14
    return-void
.end method

.method public static getStatements(Lde/greenrobot/dao/AbstractDao;)Lde/greenrobot/dao/internal/TableStatements;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T2:",
            "Ljava/lang/Object;",
            ">(",
            "Lde/greenrobot/dao/AbstractDao",
            "<TT2;*>;)",
            "Lde/greenrobot/dao/internal/TableStatements;"
        }
    .end annotation

    .prologue
    .line 33
    .local p0, "dao":Lde/greenrobot/dao/AbstractDao;, "Lde/greenrobot/dao/AbstractDao<TT2;*>;"
    invoke-virtual {p0}, Lde/greenrobot/dao/AbstractDao;->getStatements()Lde/greenrobot/dao/internal/TableStatements;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getStatements()Lde/greenrobot/dao/internal/TableStatements;
    .locals 1

    .prologue
    .line 29
    .local p0, "this":Lde/greenrobot/dao/InternalQueryDaoAccess;, "Lde/greenrobot/dao/InternalQueryDaoAccess<TT;>;"
    iget-object v0, p0, Lde/greenrobot/dao/InternalQueryDaoAccess;->dao:Lde/greenrobot/dao/AbstractDao;

    invoke-virtual {v0}, Lde/greenrobot/dao/AbstractDao;->getStatements()Lde/greenrobot/dao/internal/TableStatements;

    move-result-object v0

    return-object v0
.end method

.method public loadAllAndCloseCursor(Landroid/database/Cursor;)Ljava/util/List;
    .locals 1
    .param p1, "cursor"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 21
    .local p0, "this":Lde/greenrobot/dao/InternalQueryDaoAccess;, "Lde/greenrobot/dao/InternalQueryDaoAccess<TT;>;"
    iget-object v0, p0, Lde/greenrobot/dao/InternalQueryDaoAccess;->dao:Lde/greenrobot/dao/AbstractDao;

    invoke-virtual {v0, p1}, Lde/greenrobot/dao/AbstractDao;->loadAllAndCloseCursor(Landroid/database/Cursor;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public loadCurrent(Landroid/database/Cursor;IZ)Ljava/lang/Object;
    .locals 1
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "offset"    # I
    .param p3, "lock"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            "IZ)TT;"
        }
    .end annotation

    .prologue
    .line 17
    .local p0, "this":Lde/greenrobot/dao/InternalQueryDaoAccess;, "Lde/greenrobot/dao/InternalQueryDaoAccess<TT;>;"
    iget-object v0, p0, Lde/greenrobot/dao/InternalQueryDaoAccess;->dao:Lde/greenrobot/dao/AbstractDao;

    invoke-virtual {v0, p1, p2, p3}, Lde/greenrobot/dao/AbstractDao;->loadCurrent(Landroid/database/Cursor;IZ)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public loadUniqueAndCloseCursor(Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 1
    .param p1, "cursor"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 25
    .local p0, "this":Lde/greenrobot/dao/InternalQueryDaoAccess;, "Lde/greenrobot/dao/InternalQueryDaoAccess<TT;>;"
    iget-object v0, p0, Lde/greenrobot/dao/InternalQueryDaoAccess;->dao:Lde/greenrobot/dao/AbstractDao;

    invoke-virtual {v0, p1}, Lde/greenrobot/dao/AbstractDao;->loadUniqueAndCloseCursor(Landroid/database/Cursor;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
