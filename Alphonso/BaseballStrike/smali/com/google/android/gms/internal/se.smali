.class public final Lcom/google/android/gms/internal/se;
.super Ljava/lang/Object;


# instance fields
.field private zzcey:Lcom/google/android/gms/internal/xf;


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/google/android/gms/internal/wx;->zzIZ()Lcom/google/android/gms/internal/wx;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/se;->zzcey:Lcom/google/android/gms/internal/xf;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/xf;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/se;->zzcey:Lcom/google/android/gms/internal/xf;

    return-void
.end method


# virtual methods
.method public final zzHl()Lcom/google/android/gms/internal/xf;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/se;->zzcey:Lcom/google/android/gms/internal/xf;

    return-object v0
.end method

.method public final zzg(Lcom/google/android/gms/internal/qo;Lcom/google/android/gms/internal/xf;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/se;->zzcey:Lcom/google/android/gms/internal/xf;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/xf;->zzl(Lcom/google/android/gms/internal/qo;Lcom/google/android/gms/internal/xf;)Lcom/google/android/gms/internal/xf;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/se;->zzcey:Lcom/google/android/gms/internal/xf;

    return-void
.end method

.method public final zzp(Lcom/google/android/gms/internal/qo;)Lcom/google/android/gms/internal/xf;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/se;->zzcey:Lcom/google/android/gms/internal/xf;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/xf;->zzN(Lcom/google/android/gms/internal/qo;)Lcom/google/android/gms/internal/xf;

    move-result-object v0

    return-object v0
.end method
