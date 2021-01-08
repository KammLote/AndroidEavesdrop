.class public final Lcom/google/android/gms/internal/ip;
.super Lcom/google/android/gms/common/api/GoogleApi;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/api/GoogleApi",
        "<",
        "Lcom/google/android/gms/internal/kf;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/kf;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/gms/internal/kf;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    sget-object v0, Lcom/google/android/gms/internal/kd;->zzbWG:Lcom/google/android/gms/common/api/Api;

    new-instance v1, Lcom/google/firebase/zzb;

    invoke-direct {v1}, Lcom/google/firebase/zzb;-><init>()V

    invoke-direct {p0, p1, v0, p2, v1}, Lcom/google/android/gms/common/api/GoogleApi;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/api/Api;Lcom/google/android/gms/common/api/Api$ApiOptions;Lcom/google/android/gms/internal/zzbel;)V

    return-void
.end method

.method private static zza(Lcom/google/android/gms/internal/ki;)Lcom/google/android/gms/internal/ja;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ResultT:",
            "Ljava/lang/Object;",
            "CallbackT:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/ki",
            "<TResultT;TCallbackT;>;)",
            "Lcom/google/android/gms/internal/ja",
            "<TResultT;TCallbackT;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/ja;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ja;-><init>(Lcom/google/android/gms/internal/ki;)V

    return-object v0
.end method

.method private static zza(Lcom/google/firebase/FirebaseApp;Lcom/google/android/gms/internal/ku;)Lcom/google/android/gms/internal/lr;
    .locals 1
    .param p0    # Lcom/google/firebase/FirebaseApp;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lcom/google/android/gms/internal/ku;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/google/android/gms/internal/ip;->zza(Lcom/google/firebase/FirebaseApp;Lcom/google/android/gms/internal/ku;Z)Lcom/google/android/gms/internal/lr;

    move-result-object v0

    return-object v0
.end method

.method private static zza(Lcom/google/firebase/FirebaseApp;Lcom/google/android/gms/internal/ku;Z)Lcom/google/android/gms/internal/lr;
    .locals 5
    .param p0    # Lcom/google/firebase/FirebaseApp;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lcom/google/android/gms/internal/ku;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    invoke-static {p0}, Lcom/google/android/gms/common/internal/zzbo;->zzu(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbo;->zzu(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/lp;

    const-string v1, "firebase"

    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/internal/lp;-><init>(Lcom/google/android/gms/internal/ku;Ljava/lang/String;)V

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ku;->zzEQ()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    new-instance v4, Lcom/google/android/gms/internal/lp;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ky;

    invoke-direct {v4, v0}, Lcom/google/android/gms/internal/lp;-><init>(Lcom/google/android/gms/internal/ky;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/lr;

    invoke-direct {v0, p0, v2}, Lcom/google/android/gms/internal/lr;-><init>(Lcom/google/firebase/FirebaseApp;Ljava/util/List;)V

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/lr;->zzay(Z)Lcom/google/android/gms/internal/lr;

    return-object v0
.end method

.method static synthetic zzb(Lcom/google/firebase/FirebaseApp;Lcom/google/android/gms/internal/ku;)Lcom/google/android/gms/internal/lr;
    .locals 1

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/ip;->zza(Lcom/google/firebase/FirebaseApp;Lcom/google/android/gms/internal/ku;)Lcom/google/android/gms/internal/lr;

    move-result-object v0

    return-object v0
.end method

.method static synthetic zzb(Lcom/google/firebase/FirebaseApp;Lcom/google/android/gms/internal/ku;Z)Lcom/google/android/gms/internal/lr;
    .locals 1

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/ip;->zza(Lcom/google/firebase/FirebaseApp;Lcom/google/android/gms/internal/ku;Z)Lcom/google/android/gms/internal/lr;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final zza(Lcom/google/firebase/FirebaseApp;Lcom/google/android/gms/internal/lk;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .param p1    # Lcom/google/firebase/FirebaseApp;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/gms/internal/lk;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/FirebaseApp;",
            "Lcom/google/android/gms/internal/lk;",
            ")",
            "Lcom/google/android/gms/tasks/Task",
            "<",
            "Lcom/google/firebase/auth/AuthResult;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/jj;

    invoke-direct {v0}, Lcom/google/android/gms/internal/jj;-><init>()V

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/jj;->zzc(Lcom/google/firebase/FirebaseApp;)Lcom/google/android/gms/internal/ki;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ki;->zzU(Ljava/lang/Object;)Lcom/google/android/gms/internal/ki;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ip;->zza(Lcom/google/android/gms/internal/ki;)Lcom/google/android/gms/internal/ja;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ip;->zzb(Lcom/google/android/gms/internal/zzbep;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method public final zza(Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/auth/AuthCredential;Lcom/google/android/gms/internal/lk;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .param p1    # Lcom/google/firebase/FirebaseApp;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/firebase/auth/AuthCredential;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/google/android/gms/internal/lk;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/FirebaseApp;",
            "Lcom/google/firebase/auth/AuthCredential;",
            "Lcom/google/android/gms/internal/lk;",
            ")",
            "Lcom/google/android/gms/tasks/Task",
            "<",
            "Lcom/google/firebase/auth/AuthResult;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/jk;

    invoke-direct {v0, p2}, Lcom/google/android/gms/internal/jk;-><init>(Lcom/google/firebase/auth/AuthCredential;)V

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/jk;->zzc(Lcom/google/firebase/FirebaseApp;)Lcom/google/android/gms/internal/ki;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/google/android/gms/internal/ki;->zzU(Ljava/lang/Object;)Lcom/google/android/gms/internal/ki;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ip;->zza(Lcom/google/android/gms/internal/ki;)Lcom/google/android/gms/internal/ja;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ip;->zzb(Lcom/google/android/gms/internal/zzbep;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method public final zza(Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/auth/FirebaseUser;Lcom/google/android/gms/internal/lz;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .param p1    # Lcom/google/firebase/FirebaseApp;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/firebase/auth/FirebaseUser;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/google/android/gms/internal/lz;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/FirebaseApp;",
            "Lcom/google/firebase/auth/FirebaseUser;",
            "Lcom/google/android/gms/internal/lz;",
            ")",
            "Lcom/google/android/gms/tasks/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/jg;

    invoke-direct {v0}, Lcom/google/android/gms/internal/jg;-><init>()V

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/jg;->zzc(Lcom/google/firebase/FirebaseApp;)Lcom/google/android/gms/internal/ki;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ki;->zzf(Lcom/google/firebase/auth/FirebaseUser;)Lcom/google/android/gms/internal/ki;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/google/android/gms/internal/ki;->zzU(Ljava/lang/Object;)Lcom/google/android/gms/internal/ki;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/google/android/gms/internal/ki;->zza(Lcom/google/android/gms/internal/lv;)Lcom/google/android/gms/internal/ki;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ip;->zza(Lcom/google/android/gms/internal/ki;)Lcom/google/android/gms/internal/ja;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ip;->zza(Lcom/google/android/gms/internal/zzbep;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method public final zza(Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/auth/FirebaseUser;Lcom/google/firebase/auth/AuthCredential;Lcom/google/android/gms/internal/lz;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .param p1    # Lcom/google/firebase/FirebaseApp;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/firebase/auth/FirebaseUser;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/google/firebase/auth/AuthCredential;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/google/android/gms/internal/lz;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/FirebaseApp;",
            "Lcom/google/firebase/auth/FirebaseUser;",
            "Lcom/google/firebase/auth/AuthCredential;",
            "Lcom/google/android/gms/internal/lz;",
            ")",
            "Lcom/google/android/gms/tasks/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/jb;

    invoke-direct {v0, p3}, Lcom/google/android/gms/internal/jb;-><init>(Lcom/google/firebase/auth/AuthCredential;)V

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/jb;->zzc(Lcom/google/firebase/FirebaseApp;)Lcom/google/android/gms/internal/ki;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ki;->zzf(Lcom/google/firebase/auth/FirebaseUser;)Lcom/google/android/gms/internal/ki;

    move-result-object v0

    invoke-virtual {v0, p4}, Lcom/google/android/gms/internal/ki;->zzU(Ljava/lang/Object;)Lcom/google/android/gms/internal/ki;

    move-result-object v0

    invoke-virtual {v0, p4}, Lcom/google/android/gms/internal/ki;->zza(Lcom/google/android/gms/internal/lv;)Lcom/google/android/gms/internal/ki;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ip;->zza(Lcom/google/android/gms/internal/ki;)Lcom/google/android/gms/internal/ja;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ip;->zzb(Lcom/google/android/gms/internal/zzbep;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method public final zza(Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/auth/FirebaseUser;Lcom/google/firebase/auth/PhoneAuthCredential;Lcom/google/android/gms/internal/lz;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .param p1    # Lcom/google/firebase/FirebaseApp;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/firebase/auth/FirebaseUser;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/google/firebase/auth/PhoneAuthCredential;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/google/android/gms/internal/lz;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/FirebaseApp;",
            "Lcom/google/firebase/auth/FirebaseUser;",
            "Lcom/google/firebase/auth/PhoneAuthCredential;",
            "Lcom/google/android/gms/internal/lz;",
            ")",
            "Lcom/google/android/gms/tasks/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/js;

    invoke-direct {v0, p3}, Lcom/google/android/gms/internal/js;-><init>(Lcom/google/firebase/auth/PhoneAuthCredential;)V

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/js;->zzc(Lcom/google/firebase/FirebaseApp;)Lcom/google/android/gms/internal/ki;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ki;->zzf(Lcom/google/firebase/auth/FirebaseUser;)Lcom/google/android/gms/internal/ki;

    move-result-object v0

    invoke-virtual {v0, p4}, Lcom/google/android/gms/internal/ki;->zzU(Ljava/lang/Object;)Lcom/google/android/gms/internal/ki;

    move-result-object v0

    invoke-virtual {v0, p4}, Lcom/google/android/gms/internal/ki;->zza(Lcom/google/android/gms/internal/lv;)Lcom/google/android/gms/internal/ki;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ip;->zza(Lcom/google/android/gms/internal/ki;)Lcom/google/android/gms/internal/ja;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ip;->zzb(Lcom/google/android/gms/internal/zzbep;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method public final zza(Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/auth/FirebaseUser;Lcom/google/firebase/auth/UserProfileChangeRequest;Lcom/google/android/gms/internal/lz;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .param p1    # Lcom/google/firebase/FirebaseApp;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/firebase/auth/FirebaseUser;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/google/firebase/auth/UserProfileChangeRequest;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/google/android/gms/internal/lz;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/FirebaseApp;",
            "Lcom/google/firebase/auth/FirebaseUser;",
            "Lcom/google/firebase/auth/UserProfileChangeRequest;",
            "Lcom/google/android/gms/internal/lz;",
            ")",
            "Lcom/google/android/gms/tasks/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/jt;

    invoke-direct {v0, p3}, Lcom/google/android/gms/internal/jt;-><init>(Lcom/google/firebase/auth/UserProfileChangeRequest;)V

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/jt;->zzc(Lcom/google/firebase/FirebaseApp;)Lcom/google/android/gms/internal/ki;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ki;->zzf(Lcom/google/firebase/auth/FirebaseUser;)Lcom/google/android/gms/internal/ki;

    move-result-object v0

    invoke-virtual {v0, p4}, Lcom/google/android/gms/internal/ki;->zzU(Ljava/lang/Object;)Lcom/google/android/gms/internal/ki;

    move-result-object v0

    invoke-virtual {v0, p4}, Lcom/google/android/gms/internal/ki;->zza(Lcom/google/android/gms/internal/lv;)Lcom/google/android/gms/internal/ki;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ip;->zza(Lcom/google/android/gms/internal/ki;)Lcom/google/android/gms/internal/ja;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ip;->zzb(Lcom/google/android/gms/internal/zzbep;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method public final zza(Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/auth/FirebaseUser;Ljava/lang/String;Lcom/google/android/gms/internal/lk;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .param p1    # Lcom/google/firebase/FirebaseApp;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/firebase/auth/FirebaseUser;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/google/android/gms/internal/lk;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/FirebaseApp;",
            "Lcom/google/firebase/auth/FirebaseUser;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/lk;",
            ")",
            "Lcom/google/android/gms/tasks/Task",
            "<",
            "Lcom/google/firebase/auth/GetTokenResult;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/iw;

    invoke-direct {v0, p3}, Lcom/google/android/gms/internal/iw;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/iw;->zzc(Lcom/google/firebase/FirebaseApp;)Lcom/google/android/gms/internal/ki;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ki;->zzf(Lcom/google/firebase/auth/FirebaseUser;)Lcom/google/android/gms/internal/ki;

    move-result-object v0

    invoke-virtual {v0, p4}, Lcom/google/android/gms/internal/ki;->zzU(Ljava/lang/Object;)Lcom/google/android/gms/internal/ki;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ip;->zza(Lcom/google/android/gms/internal/ki;)Lcom/google/android/gms/internal/ja;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ip;->zza(Lcom/google/android/gms/internal/zzbep;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method public final zza(Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/auth/FirebaseUser;Ljava/lang/String;Lcom/google/android/gms/internal/lz;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .param p1    # Lcom/google/firebase/FirebaseApp;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/firebase/auth/FirebaseUser;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/google/android/gms/internal/lz;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/FirebaseApp;",
            "Lcom/google/firebase/auth/FirebaseUser;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/lz;",
            ")",
            "Lcom/google/android/gms/tasks/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/jq;

    invoke-direct {v0, p3}, Lcom/google/android/gms/internal/jq;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/jq;->zzc(Lcom/google/firebase/FirebaseApp;)Lcom/google/android/gms/internal/ki;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ki;->zzf(Lcom/google/firebase/auth/FirebaseUser;)Lcom/google/android/gms/internal/ki;

    move-result-object v0

    invoke-virtual {v0, p4}, Lcom/google/android/gms/internal/ki;->zzU(Ljava/lang/Object;)Lcom/google/android/gms/internal/ki;

    move-result-object v0

    invoke-virtual {v0, p4}, Lcom/google/android/gms/internal/ki;->zza(Lcom/google/android/gms/internal/lv;)Lcom/google/android/gms/internal/ki;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ip;->zza(Lcom/google/android/gms/internal/ki;)Lcom/google/android/gms/internal/ja;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ip;->zzb(Lcom/google/android/gms/internal/zzbep;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method public final zza(Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/auth/FirebaseUser;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/lz;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .param p1    # Lcom/google/firebase/FirebaseApp;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/firebase/auth/FirebaseUser;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Lcom/google/android/gms/internal/lz;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/FirebaseApp;",
            "Lcom/google/firebase/auth/FirebaseUser;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/lz;",
            ")",
            "Lcom/google/android/gms/tasks/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/jd;

    invoke-direct {v0, p3, p4}, Lcom/google/android/gms/internal/jd;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/jd;->zzc(Lcom/google/firebase/FirebaseApp;)Lcom/google/android/gms/internal/ki;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ki;->zzf(Lcom/google/firebase/auth/FirebaseUser;)Lcom/google/android/gms/internal/ki;

    move-result-object v0

    invoke-virtual {v0, p5}, Lcom/google/android/gms/internal/ki;->zzU(Ljava/lang/Object;)Lcom/google/android/gms/internal/ki;

    move-result-object v0

    invoke-virtual {v0, p5}, Lcom/google/android/gms/internal/ki;->zza(Lcom/google/android/gms/internal/lv;)Lcom/google/android/gms/internal/ki;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ip;->zza(Lcom/google/android/gms/internal/ki;)Lcom/google/android/gms/internal/ja;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ip;->zzb(Lcom/google/android/gms/internal/zzbep;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method public final zza(Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/auth/PhoneAuthCredential;Lcom/google/android/gms/internal/lk;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .param p1    # Lcom/google/firebase/FirebaseApp;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/firebase/auth/PhoneAuthCredential;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/google/android/gms/internal/lk;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/FirebaseApp;",
            "Lcom/google/firebase/auth/PhoneAuthCredential;",
            "Lcom/google/android/gms/internal/lk;",
            ")",
            "Lcom/google/android/gms/tasks/Task",
            "<",
            "Lcom/google/firebase/auth/AuthResult;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/jn;

    invoke-direct {v0, p2}, Lcom/google/android/gms/internal/jn;-><init>(Lcom/google/firebase/auth/PhoneAuthCredential;)V

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/jn;->zzc(Lcom/google/firebase/FirebaseApp;)Lcom/google/android/gms/internal/ki;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/google/android/gms/internal/ki;->zzU(Ljava/lang/Object;)Lcom/google/android/gms/internal/ki;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ip;->zza(Lcom/google/android/gms/internal/ki;)Lcom/google/android/gms/internal/ja;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ip;->zzb(Lcom/google/android/gms/internal/zzbep;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method public final zza(Lcom/google/firebase/FirebaseApp;Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .param p1    # Lcom/google/firebase/FirebaseApp;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/FirebaseApp;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/tasks/Task",
            "<",
            "Lcom/google/firebase/auth/ProviderQueryResult;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/iv;

    invoke-direct {v0, p2}, Lcom/google/android/gms/internal/iv;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/iv;->zzc(Lcom/google/firebase/FirebaseApp;)Lcom/google/android/gms/internal/ki;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ip;->zza(Lcom/google/android/gms/internal/ki;)Lcom/google/android/gms/internal/ja;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ip;->zza(Lcom/google/android/gms/internal/zzbep;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method public final zza(Lcom/google/firebase/FirebaseApp;Ljava/lang/String;Lcom/google/android/gms/internal/lk;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .param p1    # Lcom/google/firebase/FirebaseApp;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/google/android/gms/internal/lk;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/FirebaseApp;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/lk;",
            ")",
            "Lcom/google/android/gms/tasks/Task",
            "<",
            "Lcom/google/firebase/auth/AuthResult;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/jl;

    invoke-direct {v0, p2}, Lcom/google/android/gms/internal/jl;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/jl;->zzc(Lcom/google/firebase/FirebaseApp;)Lcom/google/android/gms/internal/ki;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/google/android/gms/internal/ki;->zzU(Ljava/lang/Object;)Lcom/google/android/gms/internal/ki;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ip;->zza(Lcom/google/android/gms/internal/ki;)Lcom/google/android/gms/internal/ja;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ip;->zzb(Lcom/google/android/gms/internal/zzbep;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method public final zza(Lcom/google/firebase/FirebaseApp;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .param p1    # Lcom/google/firebase/FirebaseApp;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/FirebaseApp;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/tasks/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/is;

    invoke-direct {v0, p2, p3}, Lcom/google/android/gms/internal/is;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/is;->zzc(Lcom/google/firebase/FirebaseApp;)Lcom/google/android/gms/internal/ki;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ip;->zza(Lcom/google/android/gms/internal/ki;)Lcom/google/android/gms/internal/ja;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ip;->zzb(Lcom/google/android/gms/internal/zzbep;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method public final zza(Lcom/google/firebase/FirebaseApp;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/lk;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .param p1    # Lcom/google/firebase/FirebaseApp;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/google/android/gms/internal/lk;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/FirebaseApp;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/lk;",
            ")",
            "Lcom/google/android/gms/tasks/Task",
            "<",
            "Lcom/google/firebase/auth/AuthResult;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/it;

    invoke-direct {v0, p2, p3}, Lcom/google/android/gms/internal/it;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/it;->zzc(Lcom/google/firebase/FirebaseApp;)Lcom/google/android/gms/internal/ki;

    move-result-object v0

    invoke-virtual {v0, p4}, Lcom/google/android/gms/internal/ki;->zzU(Ljava/lang/Object;)Lcom/google/android/gms/internal/ki;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ip;->zza(Lcom/google/android/gms/internal/ki;)Lcom/google/android/gms/internal/ja;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ip;->zzb(Lcom/google/android/gms/internal/zzbep;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method public final zza(Lcom/google/firebase/auth/FirebaseUser;Lcom/google/android/gms/internal/lu;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .param p1    # Lcom/google/firebase/auth/FirebaseUser;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/gms/internal/lu;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/auth/FirebaseUser;",
            "Lcom/google/android/gms/internal/lu;",
            ")",
            "Lcom/google/android/gms/tasks/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/iu;

    invoke-direct {v0}, Lcom/google/android/gms/internal/iu;-><init>()V

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/iu;->zzf(Lcom/google/firebase/auth/FirebaseUser;)Lcom/google/android/gms/internal/ki;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ki;->zzU(Ljava/lang/Object;)Lcom/google/android/gms/internal/ki;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ki;->zza(Lcom/google/android/gms/internal/lv;)Lcom/google/android/gms/internal/ki;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ip;->zza(Lcom/google/android/gms/internal/ki;)Lcom/google/android/gms/internal/ja;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ip;->zzb(Lcom/google/android/gms/internal/zzbep;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method public final zza(Lcom/google/firebase/FirebaseApp;Lcom/google/android/gms/internal/le;Lcom/google/firebase/auth/PhoneAuthProvider$OnVerificationStateChangedCallbacks;Landroid/app/Activity;Ljava/util/concurrent/Executor;)V
    .locals 1
    .param p1    # Lcom/google/firebase/FirebaseApp;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/gms/internal/le;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/google/firebase/auth/PhoneAuthProvider$OnVerificationStateChangedCallbacks;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/util/concurrent/Executor;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Lcom/google/android/gms/internal/jv;

    invoke-direct {v0, p2}, Lcom/google/android/gms/internal/jv;-><init>(Lcom/google/android/gms/internal/le;)V

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/jv;->zzc(Lcom/google/firebase/FirebaseApp;)Lcom/google/android/gms/internal/ki;

    move-result-object v0

    invoke-virtual {v0, p3, p4, p5}, Lcom/google/android/gms/internal/ki;->zza(Lcom/google/firebase/auth/PhoneAuthProvider$OnVerificationStateChangedCallbacks;Landroid/app/Activity;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ki;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ip;->zza(Lcom/google/android/gms/internal/ki;)Lcom/google/android/gms/internal/ja;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ip;->zzb(Lcom/google/android/gms/internal/zzbep;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method public final zzb(Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/auth/FirebaseUser;Lcom/google/firebase/auth/AuthCredential;Lcom/google/android/gms/internal/lz;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .param p1    # Lcom/google/firebase/FirebaseApp;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/firebase/auth/FirebaseUser;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/google/firebase/auth/AuthCredential;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/google/android/gms/internal/lz;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/FirebaseApp;",
            "Lcom/google/firebase/auth/FirebaseUser;",
            "Lcom/google/firebase/auth/AuthCredential;",
            "Lcom/google/android/gms/internal/lz;",
            ")",
            "Lcom/google/android/gms/tasks/Task",
            "<",
            "Lcom/google/firebase/auth/AuthResult;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/jc;

    invoke-direct {v0, p3}, Lcom/google/android/gms/internal/jc;-><init>(Lcom/google/firebase/auth/AuthCredential;)V

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/jc;->zzc(Lcom/google/firebase/FirebaseApp;)Lcom/google/android/gms/internal/ki;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ki;->zzf(Lcom/google/firebase/auth/FirebaseUser;)Lcom/google/android/gms/internal/ki;

    move-result-object v0

    invoke-virtual {v0, p4}, Lcom/google/android/gms/internal/ki;->zzU(Ljava/lang/Object;)Lcom/google/android/gms/internal/ki;

    move-result-object v0

    invoke-virtual {v0, p4}, Lcom/google/android/gms/internal/ki;->zza(Lcom/google/android/gms/internal/lv;)Lcom/google/android/gms/internal/ki;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ip;->zza(Lcom/google/android/gms/internal/ki;)Lcom/google/android/gms/internal/ja;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ip;->zzb(Lcom/google/android/gms/internal/zzbep;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method public final zzb(Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/auth/FirebaseUser;Lcom/google/firebase/auth/PhoneAuthCredential;Lcom/google/android/gms/internal/lz;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .param p1    # Lcom/google/firebase/FirebaseApp;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/firebase/auth/FirebaseUser;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/google/firebase/auth/PhoneAuthCredential;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/google/android/gms/internal/lz;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/FirebaseApp;",
            "Lcom/google/firebase/auth/FirebaseUser;",
            "Lcom/google/firebase/auth/PhoneAuthCredential;",
            "Lcom/google/android/gms/internal/lz;",
            ")",
            "Lcom/google/android/gms/tasks/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/jf;

    invoke-direct {v0, p3}, Lcom/google/android/gms/internal/jf;-><init>(Lcom/google/firebase/auth/PhoneAuthCredential;)V

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/jf;->zzc(Lcom/google/firebase/FirebaseApp;)Lcom/google/android/gms/internal/ki;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ki;->zzf(Lcom/google/firebase/auth/FirebaseUser;)Lcom/google/android/gms/internal/ki;

    move-result-object v0

    invoke-virtual {v0, p4}, Lcom/google/android/gms/internal/ki;->zzU(Ljava/lang/Object;)Lcom/google/android/gms/internal/ki;

    move-result-object v0

    invoke-virtual {v0, p4}, Lcom/google/android/gms/internal/ki;->zza(Lcom/google/android/gms/internal/lv;)Lcom/google/android/gms/internal/ki;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ip;->zza(Lcom/google/android/gms/internal/ki;)Lcom/google/android/gms/internal/ja;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ip;->zzb(Lcom/google/android/gms/internal/zzbep;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method public final zzb(Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/auth/FirebaseUser;Ljava/lang/String;Lcom/google/android/gms/internal/lz;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .param p1    # Lcom/google/firebase/FirebaseApp;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/firebase/auth/FirebaseUser;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/google/android/gms/internal/lz;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/FirebaseApp;",
            "Lcom/google/firebase/auth/FirebaseUser;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/lz;",
            ")",
            "Lcom/google/android/gms/tasks/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/jr;

    invoke-direct {v0, p3}, Lcom/google/android/gms/internal/jr;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/jr;->zzc(Lcom/google/firebase/FirebaseApp;)Lcom/google/android/gms/internal/ki;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ki;->zzf(Lcom/google/firebase/auth/FirebaseUser;)Lcom/google/android/gms/internal/ki;

    move-result-object v0

    invoke-virtual {v0, p4}, Lcom/google/android/gms/internal/ki;->zzU(Ljava/lang/Object;)Lcom/google/android/gms/internal/ki;

    move-result-object v0

    invoke-virtual {v0, p4}, Lcom/google/android/gms/internal/ki;->zza(Lcom/google/android/gms/internal/lv;)Lcom/google/android/gms/internal/ki;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ip;->zza(Lcom/google/android/gms/internal/ki;)Lcom/google/android/gms/internal/ja;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ip;->zzb(Lcom/google/android/gms/internal/zzbep;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method public final zzb(Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/auth/FirebaseUser;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/lz;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .param p1    # Lcom/google/firebase/FirebaseApp;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/firebase/auth/FirebaseUser;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Lcom/google/android/gms/internal/lz;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/FirebaseApp;",
            "Lcom/google/firebase/auth/FirebaseUser;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/lz;",
            ")",
            "Lcom/google/android/gms/tasks/Task",
            "<",
            "Lcom/google/firebase/auth/AuthResult;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/je;

    invoke-direct {v0, p3, p4}, Lcom/google/android/gms/internal/je;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/je;->zzc(Lcom/google/firebase/FirebaseApp;)Lcom/google/android/gms/internal/ki;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ki;->zzf(Lcom/google/firebase/auth/FirebaseUser;)Lcom/google/android/gms/internal/ki;

    move-result-object v0

    invoke-virtual {v0, p5}, Lcom/google/android/gms/internal/ki;->zzU(Ljava/lang/Object;)Lcom/google/android/gms/internal/ki;

    move-result-object v0

    invoke-virtual {v0, p5}, Lcom/google/android/gms/internal/ki;->zza(Lcom/google/android/gms/internal/lv;)Lcom/google/android/gms/internal/ki;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ip;->zza(Lcom/google/android/gms/internal/ki;)Lcom/google/android/gms/internal/ja;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ip;->zzb(Lcom/google/android/gms/internal/zzbep;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method public final zzb(Lcom/google/firebase/FirebaseApp;Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .param p1    # Lcom/google/firebase/FirebaseApp;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/FirebaseApp;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/tasks/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/ji;

    invoke-direct {v0, p2}, Lcom/google/android/gms/internal/ji;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ji;->zzc(Lcom/google/firebase/FirebaseApp;)Lcom/google/android/gms/internal/ki;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ip;->zza(Lcom/google/android/gms/internal/ki;)Lcom/google/android/gms/internal/ja;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ip;->zzb(Lcom/google/android/gms/internal/zzbep;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method public final zzb(Lcom/google/firebase/FirebaseApp;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/lk;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .param p1    # Lcom/google/firebase/FirebaseApp;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/google/android/gms/internal/lk;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/FirebaseApp;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/lk;",
            ")",
            "Lcom/google/android/gms/tasks/Task",
            "<",
            "Lcom/google/firebase/auth/AuthResult;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/jm;

    invoke-direct {v0, p2, p3}, Lcom/google/android/gms/internal/jm;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/jm;->zzc(Lcom/google/firebase/FirebaseApp;)Lcom/google/android/gms/internal/ki;

    move-result-object v0

    invoke-virtual {v0, p4}, Lcom/google/android/gms/internal/ki;->zzU(Ljava/lang/Object;)Lcom/google/android/gms/internal/ki;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ip;->zza(Lcom/google/android/gms/internal/ki;)Lcom/google/android/gms/internal/ja;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ip;->zzb(Lcom/google/android/gms/internal/zzbep;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method public final zzc(Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/auth/FirebaseUser;Lcom/google/firebase/auth/AuthCredential;Lcom/google/android/gms/internal/lz;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .param p1    # Lcom/google/firebase/FirebaseApp;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/firebase/auth/FirebaseUser;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/google/firebase/auth/AuthCredential;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/google/android/gms/internal/lz;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/FirebaseApp;",
            "Lcom/google/firebase/auth/FirebaseUser;",
            "Lcom/google/firebase/auth/AuthCredential;",
            "Lcom/google/android/gms/internal/lz;",
            ")",
            "Lcom/google/android/gms/tasks/Task",
            "<",
            "Lcom/google/firebase/auth/AuthResult;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/jc;

    invoke-direct {v0, p3}, Lcom/google/android/gms/internal/jc;-><init>(Lcom/google/firebase/auth/AuthCredential;)V

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/jc;->zzc(Lcom/google/firebase/FirebaseApp;)Lcom/google/android/gms/internal/ki;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ki;->zzf(Lcom/google/firebase/auth/FirebaseUser;)Lcom/google/android/gms/internal/ki;

    move-result-object v0

    invoke-virtual {v0, p4}, Lcom/google/android/gms/internal/ki;->zzU(Ljava/lang/Object;)Lcom/google/android/gms/internal/ki;

    move-result-object v0

    invoke-virtual {v0, p4}, Lcom/google/android/gms/internal/ki;->zza(Lcom/google/android/gms/internal/lv;)Lcom/google/android/gms/internal/ki;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ip;->zza(Lcom/google/android/gms/internal/ki;)Lcom/google/android/gms/internal/ja;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ip;->zzb(Lcom/google/android/gms/internal/zzbep;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method public final zzc(Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/auth/FirebaseUser;Ljava/lang/String;Lcom/google/android/gms/internal/lz;)Lcom/google/android/gms/tasks/Task;
    .locals 2
    .param p1    # Lcom/google/firebase/FirebaseApp;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/firebase/auth/FirebaseUser;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/google/android/gms/internal/lz;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/FirebaseApp;",
            "Lcom/google/firebase/auth/FirebaseUser;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/lz;",
            ")",
            "Lcom/google/android/gms/tasks/Task",
            "<",
            "Lcom/google/firebase/auth/AuthResult;",
            ">;"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbo;->zzu(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p3}, Lcom/google/android/gms/common/internal/zzbo;->zzcF(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzbo;->zzu(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p4}, Lcom/google/android/gms/common/internal/zzbo;->zzu(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/google/firebase/auth/FirebaseUser;->getProviders()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p2}, Lcom/google/firebase/auth/FirebaseUser;->isAnonymous()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const/16 v1, 0x4278

    invoke-direct {v0, v1, p3}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    invoke-static {v0}, Lcom/google/android/gms/internal/jy;->zzK(Lcom/google/android/gms/common/api/Status;)Lcom/google/firebase/FirebaseException;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/tasks/Tasks;->forException(Ljava/lang/Exception;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_2
    const/4 v0, -0x1

    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :cond_3
    :goto_1
    packed-switch v0, :pswitch_data_1

    new-instance v0, Lcom/google/android/gms/internal/jp;

    invoke-direct {v0, p3}, Lcom/google/android/gms/internal/jp;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/jp;->zzc(Lcom/google/firebase/FirebaseApp;)Lcom/google/android/gms/internal/ki;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ki;->zzf(Lcom/google/firebase/auth/FirebaseUser;)Lcom/google/android/gms/internal/ki;

    move-result-object v0

    invoke-virtual {v0, p4}, Lcom/google/android/gms/internal/ki;->zzU(Ljava/lang/Object;)Lcom/google/android/gms/internal/ki;

    move-result-object v0

    invoke-virtual {v0, p4}, Lcom/google/android/gms/internal/ki;->zza(Lcom/google/android/gms/internal/lv;)Lcom/google/android/gms/internal/ki;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ip;->zza(Lcom/google/android/gms/internal/ki;)Lcom/google/android/gms/internal/ja;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ip;->zzb(Lcom/google/android/gms/internal/zzbep;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    goto :goto_0

    :pswitch_0
    const-string v1, "password"

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v0, 0x0

    goto :goto_1

    :pswitch_1
    new-instance v0, Lcom/google/android/gms/internal/jo;

    invoke-direct {v0}, Lcom/google/android/gms/internal/jo;-><init>()V

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/jo;->zzc(Lcom/google/firebase/FirebaseApp;)Lcom/google/android/gms/internal/ki;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ki;->zzf(Lcom/google/firebase/auth/FirebaseUser;)Lcom/google/android/gms/internal/ki;

    move-result-object v0

    invoke-virtual {v0, p4}, Lcom/google/android/gms/internal/ki;->zzU(Ljava/lang/Object;)Lcom/google/android/gms/internal/ki;

    move-result-object v0

    invoke-virtual {v0, p4}, Lcom/google/android/gms/internal/ki;->zza(Lcom/google/android/gms/internal/lv;)Lcom/google/android/gms/internal/ki;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ip;->zza(Lcom/google/android/gms/internal/ki;)Lcom/google/android/gms/internal/ja;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ip;->zzb(Lcom/google/android/gms/internal/zzbep;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x4889ba9b
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method

.method public final zzc(Lcom/google/firebase/FirebaseApp;Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .param p1    # Lcom/google/firebase/FirebaseApp;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/FirebaseApp;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/tasks/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/jh;

    invoke-direct {v0, p2}, Lcom/google/android/gms/internal/jh;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/jh;->zzc(Lcom/google/firebase/FirebaseApp;)Lcom/google/android/gms/internal/ki;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ip;->zza(Lcom/google/android/gms/internal/ki;)Lcom/google/android/gms/internal/ja;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ip;->zzb(Lcom/google/android/gms/internal/zzbep;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method public final zzd(Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/auth/FirebaseUser;Lcom/google/firebase/auth/AuthCredential;Lcom/google/android/gms/internal/lz;)Lcom/google/android/gms/tasks/Task;
    .locals 3
    .param p1    # Lcom/google/firebase/FirebaseApp;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/firebase/auth/FirebaseUser;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/google/firebase/auth/AuthCredential;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/google/android/gms/internal/lz;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/FirebaseApp;",
            "Lcom/google/firebase/auth/FirebaseUser;",
            "Lcom/google/firebase/auth/AuthCredential;",
            "Lcom/google/android/gms/internal/lz;",
            ")",
            "Lcom/google/android/gms/tasks/Task",
            "<",
            "Lcom/google/firebase/auth/AuthResult;",
            ">;"
        }
    .end annotation

    const/16 v2, 0x4277

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbo;->zzu(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p3}, Lcom/google/android/gms/common/internal/zzbo;->zzu(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzbo;->zzu(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p4}, Lcom/google/android/gms/common/internal/zzbo;->zzu(Ljava/lang/Object;)Ljava/lang/Object;

    instance-of v0, p3, Lcom/google/firebase/auth/EmailAuthCredential;

    if-eqz v0, :cond_0

    check-cast p3, Lcom/google/firebase/auth/EmailAuthCredential;

    new-instance v0, Lcom/google/android/gms/internal/ix;

    invoke-direct {v0, p3}, Lcom/google/android/gms/internal/ix;-><init>(Lcom/google/firebase/auth/EmailAuthCredential;)V

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ix;->zzc(Lcom/google/firebase/FirebaseApp;)Lcom/google/android/gms/internal/ki;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ki;->zzf(Lcom/google/firebase/auth/FirebaseUser;)Lcom/google/android/gms/internal/ki;

    move-result-object v0

    invoke-virtual {v0, p4}, Lcom/google/android/gms/internal/ki;->zzU(Ljava/lang/Object;)Lcom/google/android/gms/internal/ki;

    move-result-object v0

    invoke-virtual {v0, p4}, Lcom/google/android/gms/internal/ki;->zza(Lcom/google/android/gms/internal/lv;)Lcom/google/android/gms/internal/ki;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ip;->zza(Lcom/google/android/gms/internal/ki;)Lcom/google/android/gms/internal/ja;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ip;->zzb(Lcom/google/android/gms/internal/zzbep;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    instance-of v0, p3, Lcom/google/firebase/auth/PhoneAuthCredential;

    if-eqz v0, :cond_2

    check-cast p3, Lcom/google/firebase/auth/PhoneAuthCredential;

    invoke-virtual {p2}, Lcom/google/firebase/auth/FirebaseUser;->getProviders()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p3}, Lcom/google/firebase/auth/PhoneAuthCredential;->getProvider()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/google/android/gms/common/api/Status;

    invoke-direct {v0, v2}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    invoke-static {v0}, Lcom/google/android/gms/internal/jy;->zzK(Lcom/google/android/gms/common/api/Status;)Lcom/google/firebase/FirebaseException;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/tasks/Tasks;->forException(Ljava/lang/Exception;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/iz;

    invoke-direct {v0, p3}, Lcom/google/android/gms/internal/iz;-><init>(Lcom/google/firebase/auth/PhoneAuthCredential;)V

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/iz;->zzc(Lcom/google/firebase/FirebaseApp;)Lcom/google/android/gms/internal/ki;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ki;->zzf(Lcom/google/firebase/auth/FirebaseUser;)Lcom/google/android/gms/internal/ki;

    move-result-object v0

    invoke-virtual {v0, p4}, Lcom/google/android/gms/internal/ki;->zzU(Ljava/lang/Object;)Lcom/google/android/gms/internal/ki;

    move-result-object v0

    invoke-virtual {v0, p4}, Lcom/google/android/gms/internal/ki;->zza(Lcom/google/android/gms/internal/lv;)Lcom/google/android/gms/internal/ki;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ip;->zza(Lcom/google/android/gms/internal/ki;)Lcom/google/android/gms/internal/ja;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ip;->zzb(Lcom/google/android/gms/internal/zzbep;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbo;->zzu(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p3}, Lcom/google/android/gms/common/internal/zzbo;->zzu(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzbo;->zzu(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p4}, Lcom/google/android/gms/common/internal/zzbo;->zzu(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/google/firebase/auth/FirebaseUser;->getProviders()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p3}, Lcom/google/firebase/auth/AuthCredential;->getProvider()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Lcom/google/android/gms/common/api/Status;

    invoke-direct {v0, v2}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    invoke-static {v0}, Lcom/google/android/gms/internal/jy;->zzK(Lcom/google/android/gms/common/api/Status;)Lcom/google/firebase/FirebaseException;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/tasks/Tasks;->forException(Ljava/lang/Exception;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    goto :goto_0

    :cond_3
    new-instance v0, Lcom/google/android/gms/internal/iy;

    invoke-direct {v0, p3}, Lcom/google/android/gms/internal/iy;-><init>(Lcom/google/firebase/auth/AuthCredential;)V

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/iy;->zzc(Lcom/google/firebase/FirebaseApp;)Lcom/google/android/gms/internal/ki;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ki;->zzf(Lcom/google/firebase/auth/FirebaseUser;)Lcom/google/android/gms/internal/ki;

    move-result-object v0

    invoke-virtual {v0, p4}, Lcom/google/android/gms/internal/ki;->zzU(Ljava/lang/Object;)Lcom/google/android/gms/internal/ki;

    move-result-object v0

    invoke-virtual {v0, p4}, Lcom/google/android/gms/internal/ki;->zza(Lcom/google/android/gms/internal/lv;)Lcom/google/android/gms/internal/ki;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ip;->zza(Lcom/google/android/gms/internal/ki;)Lcom/google/android/gms/internal/ja;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ip;->zzb(Lcom/google/android/gms/internal/zzbep;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    goto/16 :goto_0
.end method

.method public final zzd(Lcom/google/firebase/FirebaseApp;Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .param p1    # Lcom/google/firebase/FirebaseApp;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/FirebaseApp;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/tasks/Task",
            "<",
            "Lcom/google/firebase/auth/ActionCodeResult;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/ir;

    invoke-direct {v0, p2}, Lcom/google/android/gms/internal/ir;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ir;->zzc(Lcom/google/firebase/FirebaseApp;)Lcom/google/android/gms/internal/ki;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ip;->zza(Lcom/google/android/gms/internal/ki;)Lcom/google/android/gms/internal/ja;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ip;->zzb(Lcom/google/android/gms/internal/zzbep;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method public final zze(Lcom/google/firebase/FirebaseApp;Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .param p1    # Lcom/google/firebase/FirebaseApp;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/FirebaseApp;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/tasks/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/iq;

    invoke-direct {v0, p2}, Lcom/google/android/gms/internal/iq;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/iq;->zzc(Lcom/google/firebase/FirebaseApp;)Lcom/google/android/gms/internal/ki;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ip;->zza(Lcom/google/android/gms/internal/ki;)Lcom/google/android/gms/internal/ja;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ip;->zzb(Lcom/google/android/gms/internal/zzbep;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method public final zzf(Lcom/google/firebase/FirebaseApp;Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .param p1    # Lcom/google/firebase/FirebaseApp;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/FirebaseApp;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/tasks/Task",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/ju;

    invoke-direct {v0, p2}, Lcom/google/android/gms/internal/ju;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ju;->zzc(Lcom/google/firebase/FirebaseApp;)Lcom/google/android/gms/internal/ki;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ip;->zza(Lcom/google/android/gms/internal/ki;)Lcom/google/android/gms/internal/ja;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ip;->zzb(Lcom/google/android/gms/internal/zzbep;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method
